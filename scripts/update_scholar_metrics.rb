#!/usr/bin/env ruby

require "date"
require "net/http"
require "uri"
require "yaml"

PROFILE_ID = ENV.fetch("SCHOLAR_PROFILE_ID", "z1Cqb6AAAAAJ")
PROFILE_URL = "https://scholar.google.com/citations?user=#{PROFILE_ID}&hl=en&pagesize=1"
OUTPUT_PATH = File.expand_path("../_data/scholar_metrics.yml", __dir__)

def fetch_profile(url)
  uri = URI(url)
  request = Net::HTTP::Get.new(uri)
  request["User-Agent"] = "Mozilla/5.0 (compatible; academic-profile-metrics/1.0)"

  Net::HTTP.start(
    uri.host,
    uri.port,
    use_ssl: true,
    open_timeout: 15,
    read_timeout: 30
  ) do |http|
    response = http.request(request)
    abort("Google Scholar returned HTTP #{response.code}") unless response.is_a?(Net::HTTPSuccess)
    response.body.force_encoding(Encoding::UTF_8)
  end
end

def extract_metric(html, label)
  pattern = />#{Regexp.escape(label)}<\/a><\/td><td class="gsc_rsb_std">([0-9,]+)<\/td>/
  match = html.match(pattern)
  abort("Could not find #{label} on the Google Scholar profile") unless match
  Integer(match[1].delete(","), 10)
end

html = fetch_profile(PROFILE_URL)
abort("Unexpected Google Scholar profile") unless html.include?("Alejandro Guerrero-López")

metrics = {
  "citations" => extract_metric(html, "Citations"),
  "h_index" => extract_metric(html, "h-index")
}

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
