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

{% assign categories_order = "Peer-review Journals,Preprints,Conference Proceedings,Conference Abstracts,Datasets,Misc" | split: "," %}

{% for category in categories_order %}
  {% assign publications_in_category = site.publications | where: "category", category %}

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
