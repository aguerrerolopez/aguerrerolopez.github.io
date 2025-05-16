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

<style>
.category-toggle { cursor: pointer; user-select: none; }
.toggle-icon { margin-left: 5px; }
.publications-section { display: none; margin-bottom: 1em; }
.publication-item { margin-bottom: 1em; }
.load-more-btn { background: none; border: none; color: #007bff; text-decoration: underline; cursor: pointer; padding: 0; font-weight: bold; }
.load-more-btn:hover { color: #0056b3; }
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.publications-section').forEach(function(sec) {
    // start closed
    sec.style.display = 'none';

    // wire up the accordion toggle
    var toggle = sec.previousElementSibling;
    var icon   = toggle.querySelector('.toggle-icon');
    toggle.addEventListener('click', function() {
      var open = sec.style.display === 'block';
      sec.style.display = open ? 'none' : 'block';
      icon.textContent  = open ? '+' : '−';
    });

    // “show only 5, then load more”
    var items = Array.from(sec.querySelectorAll('.publication-item'));
    if (items.length > 5) {
      // hide 6+
      items.slice(5).forEach(function(it){ it.style.display = 'none'; });
      // add button
      var btn = document.createElement('button');
      btn.className   = 'load-more-btn';
      btn.textContent = 'Click here to see more…';
      sec.appendChild(btn);
      btn.addEventListener('click', function() {
        items.slice(5).forEach(function(it){ it.style.display = 'block'; });
        btn.remove();
      });
    }
  });
});
</script>
