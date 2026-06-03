---
layout: archive
title: "Software & Data"
permalink: /software-data/
author_profile: true
---


{% include base_path %}

This page gathers my open-source software, public datasets, and reusable teaching resources. These projects are part of a broader goal: making machine learning more useful and accessible for health and biomedical research.

I am especially interested in resources that help clinicians, microbiologists, and biomedical researchers work with AI in a more practical, transparent, and reproducible way. Some entries are research prototypes, while others are designed as reusable community-facing tools and data assets.

{% assign categories_order = "Datasets,Software,Teaching,Misc" | split: "," %}

{% for category in categories_order %}
  {% assign publications_in_category = site.portfolio | where: "category", category %}

  {% if publications_in_category.size > 0 %}
<h2 class="category-toggle">{{ category | capitalize }} <span class="toggle-icon">+</span></h2>
<div id="publications-{{ category | slugify }}" class="publications-section">
      {% for post in publications_in_category %}
        {% include archive-single.html %}
      {% endfor %}
</div>
  {% endif %}
{% endfor %}


<script>
var categoryToggles = document.querySelectorAll('.category-toggle');
categoryToggles.forEach(function(toggle) {
  toggle.addEventListener('click', function() {
    var publicationsSection = this.nextElementSibling;
    var toggleIcon = this.querySelector('.toggle-icon');
    
    if (publicationsSection.style.display === 'none') {
      publicationsSection.style.display = 'block';
      toggleIcon.innerHTML = '-';
    } else {
      publicationsSection.style.display = 'none';
      toggleIcon.innerHTML = '+';
    }
  });
});
</script>

<style>
.category-toggle {
  cursor: pointer;
}

.publications-section {
  display: none;
  margin-bottom: 20px;
}

.toggle-icon {
  margin-left: 5px;
}
</style>
