---
layout: page
permalink: /publications2/
title: Publications
description: 
years: [2023, 2022, 2021, 2020, 2019]
nav: true
nav_order: 2
---
<!-- _pages/publications2.md -->
<div class="publications2">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% site.publications -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
