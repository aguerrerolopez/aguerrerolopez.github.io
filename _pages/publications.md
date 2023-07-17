---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on [my Google Scholar profile]({{author.googlescholar}}).
{% endif %}

{% include base_path %}

{% assign sorted_publications = site.publications | sort: 'date' | reverse %}

{% for post in sorted_publications %}
  {% capture current_year %}{{ post.date | date: "%Y" }}{% endcapture %}
  
  {% unless year == current_year %}
    {% assign year = current_year %}
## {{ year }}
  {% endunless %}
  
  {% include archive-single.html %}
{% endfor %}
