---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% assign papers_by_year = "" | split: "" %}

{% for post in site.publications reversed %}
  {% assign year = post.date | date: "%Y" %}
  {% capture papers_for_year %}{% include archive-single.html %}{% endcapture %}
  {% assign papers_by_year = papers_by_year | push: papers_for_year %}
{% endfor %}

{% assign papers_by_year = papers_by_year | group_by: "<h3>Year: {{item.date | date: '%Y'}}</h3>" %}

{% for year_group in papers_by_year %}
  {{ year_group.name }}
  {% for paper in year_group.items %}
    {{ paper }}
  {% endfor %}
{% endfor %}
