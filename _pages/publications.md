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


<script>
document.addEventListener('DOMContentLoaded', function() {
  var itemsPerPage = 5;
  var toggles = document.querySelectorAll('.category-toggle');

  toggles.forEach(function(toggle) {
    toggle.addEventListener('click', function() {
      var section = this.nextElementSibling;
      var icon    = this.querySelector('.toggle-icon');

      if (section.style.display === 'block') {
        section.style.display = 'none';
        icon.innerText = '+';
      } else {
        section.style.display = 'block';
        icon.innerText = '−';
        initPagination(section);
      }
    });
  });

  function initPagination(section) {
    // only run once per section
    if (section.dataset.paginated) return;
    section.dataset.paginated = true;

    var items = Array.prototype.slice.call(section.querySelectorAll('.publication-item'));
    var shown = 0;

    // hide all
    items.forEach(function(item){ item.style.display = 'none'; });

    // create load-more link
    var more = document.createElement('div');
    more.className = 'load-more';
    more.innerText = 'Click here to see more…';
    more.style.display = 'none';
    section.appendChild(more);

    more.addEventListener('click', function(){
      var nextBatch = items.slice(shown, shown + itemsPerPage);
      nextBatch.forEach(function(item){
        item.style.display = 'block';
      });
      shown += nextBatch.length;
      if (shown < items.length) {
        // still more
        more.style.display = 'block';
      } else {
        // no more
        more.style.display = 'none';
      }
    });

    // show first batch
    more.click();
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
</style>



.publication-item {
  margin-bottom: 1em;
}

.load-more {
  cursor: pointer;
  display: block;
  margin: 1em 0;
  font-weight: bold;
  color: #007bff;
  text-decoration: underline;
  transition: color .2s;
}
.load-more:hover {
  color: #0056b3;
}
