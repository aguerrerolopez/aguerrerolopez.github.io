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
  {% assign publications_in_category = site.publications
     | where: "category", category
     | sort: "date"
     | reverse %}

  {% if publications_in_category.size > 0 %}
<h2 class="category-toggle">{{ category | capitalize }} <span class="toggle-icon">+</span></h2>
<div id="publications-{{ category | slugify }}" class="publications-section">
      {% for post in publications_in_category %}
  <div class="publication-item">
    {% include archive-single.html %}
  </div>
{% endfor %}

</div>
  {% endif %}
{% endfor %}

{% if publications_in_category.size > 5 %}
  <button class="load-more-btn">Click here to see more…</button>
{% endif %}


<script>
document.addEventListener('click', function(e) {
  // if a load-more button was clicked…
  if (e.target.matches('.load-more-btn')) {
    var section = e.target.closest('.publications-section');
    section.classList.add('show-all');      // reveal 6+
    e.target.style.display = 'none';        // hide the button
  }
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

/* hide items 6 and up by default */
.publications-section .publication-item:nth-child(n+6) {
  display: none;
}

/* when .show-all is on, reveal them */
.publications-section.show-all .publication-item:nth-child(n+6) {
  display: block;
}

/* style the button */
.load-more-btn {
  background: none;
  border: none;
  color: #007bff;
  font-weight: bold;
  cursor: pointer;
  margin: 1em 0;
  text-decoration: underline;
  padding: 0;
}
.load-more-btn:hover {
  color: #0056b3;
}

</style>