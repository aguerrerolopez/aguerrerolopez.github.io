#!/usr/bin/env ruby

require "date"
require "net/http"
require "uri"
require "yaml"

PROFILE_ID = ENV.fetch("SCHOLAR_PROFILE_ID", "z1Cqb6AAAAAJ")
PROFILE_URL = ENV.fetch(
  "SCHOLAR_PROFILE_URL",
  "https://scholar.google.com/citations?user=#{PROFILE_ID}&hl=en&pagesize=1"
)
OUTPUT_PATH = File.expand_path("../_data/scholar_metrics.yml", __dir__)
MAX_ATTEMPTS = Integer(ENV.fetch("SCHOLAR_MAX_ATTEMPTS", "3"), 10)

class ScholarUnavailable < StandardError; end

def retry_delay(response, attempt)
  retry_after = (response && response["Retry-After"]).to_i
  return [retry_after, 60].min if retry_after.positive?

  5 * (2**(attempt - 1))
end

def fetch_profile(url)
  uri = URI(url)
  last_error = nil

  1.upto(MAX_ATTEMPTS) do |attempt|
    request = Net::HTTP::Get.new(uri)
    request["User-Agent"] = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 Chrome/124.0 Safari/537.36"
    request["Accept-Language"] = "en-US,en;q=0.9"

    response = Net::HTTP.start(
      uri.host,
      uri.port,
      use_ssl: true,
      open_timeout: 15,
      read_timeout: 30
    ) { |http| http.request(request) }

    if response.is_a?(Net::HTTPSuccess)
      return response.body.force_encoding(Encoding::UTF_8)
    end

    last_error = "Google Scholar returned HTTP #{response.code}"
    break unless response.code.to_i == 429 || response.code.to_i == 403 || response.code.to_i >= 500
    sleep(retry_delay(response, attempt)) if attempt < MAX_ATTEMPTS
  rescue Net::OpenTimeout, Net::ReadTimeout, SocketError, SystemCallError => error
    last_error = "Google Scholar request failed: #{error.class}"
    sleep(retry_delay(nil, attempt)) if attempt < MAX_ATTEMPTS
  end

  raise ScholarUnavailable, last_error || "Google Scholar is unavailable"
end

def extract_metric(html, label)
  pattern = />#{Regexp.escape(label)}<\/a><\/td><td class="gsc_rsb_std">([0-9,]+)<\/td>/
  match = html.match(pattern)
  raise ScholarUnavailable, "Could not find #{label} on the Google Scholar profile" unless match
  Integer(match[1].delete(","), 10)
end

begin
  html = fetch_profile(PROFILE_URL)
  raise ScholarUnavailable, "Unexpected Google Scholar profile response" unless html.include?("Alejandro Guerrero-López")

  metrics = {
    "citations" => extract_metric(html, "Citations"),
    "h_index" => extract_metric(html, "h-index")
  }
rescue ScholarUnavailable => error
  if File.exist?(OUTPUT_PATH)
    warn "::warning title=Google Scholar metrics unavailable::#{error.message}. Keeping the last valid cached metrics."
    exit 0
  end

  abort(error.message)
end

abort("Invalid citation count") unless metrics["citations"].positive?
abort("Invalid h-index") unless metrics["h_index"].positive?

existing = File.exist?(OUTPUT_PATH) ? YAML.safe_load_file(OUTPUT_PATH) : {}
if existing["citations"] == metrics["citations"] && existing["h_index"] == metrics["h_index"]
  puts "Google Scholar metrics are unchanged."
  exit 0
end

File.write(
  OUTPUT_PATH,
  <<~YAML
    citations: #{metrics["citations"]}
    h_index: #{metrics["h_index"]}
    updated_on: "#{Date.today.iso8601}"
    profile_url: "https://scholar.google.com/citations?user=#{PROFILE_ID}&hl=en"
  YAML
)

puts "Updated Google Scholar metrics: #{metrics['citations']} citations, h-index #{metrics['h_index']}."
