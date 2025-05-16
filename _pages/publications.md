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
  {% assign pubs = site.publications
       | where: "category", category
       | sort: "date"
       | reverse %}

  {% if pubs.size > 0 %}
    <h2 class="category-toggle">{{ category | capitalize }} <span class="toggle-icon">+</span></h2>
    <div class="publications-section">
      {% for post in pubs %}
        <div class="publication-item">
          {% include archive-single.html %}
        </div>
      {% endfor %}

      {% if pubs.size > 5 %}
        <button class="load-more-btn">Click here to see more…</button>
      {% endif %}
    </div>
  {% endif %}
{% endfor %}



<script>
document.addEventListener('DOMContentLoaded', function() {
  // 1) category toggles
  document.querySelectorAll('.category-toggle').forEach(function(toggle) {
    toggle.addEventListener('click', function() {
      var section = this.nextElementSibling;
      var icon    = this.querySelector('.toggle-icon');
      var isOpen  = section.style.display === 'block';
      section.style.display = isOpen ? 'none' : 'block';
      icon.innerText        = isOpen ? '+' : '−';
    });
  });

  // 2) load-more logic
  document.addEventListener('click', function(e) {
    if (e.target.matches('.load-more-btn')) {
      var section = e.target.closest('.publications-section');
      section.classList.add('show-all');  // reveal items 6+
      e.target.style.display = 'none';    // hide the button
    }
  });
});
</script>

<style>
.category-toggle { cursor: pointer; }
.toggle-icon { margin-left: 5px; }

.publications-section {
  display: none;
  margin-bottom: 20px;
}

/* hide items 6+ unless .show-all */
.publication-item:nth-child(n+6) {
  display: none;
}
.publications-section.show-all .publication-item:nth-child(n+6) {
  display: block;
}

/* load-more button */
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