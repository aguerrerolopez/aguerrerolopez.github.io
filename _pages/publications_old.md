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

{% assign last_year = "" %}
{% for post in sorted_publications %}
  {% capture current_year %}{{ post.date | date: "%Y" }}{% endcapture %}
  
  {% unless year == current_year %}
    {% assign year = current_year %}
    {% if forloop.last %}
      {% assign last_year = year %}
    {% endif %}
<h2 class="year-toggle{% if year == last_year %} open{% endif %}">{{ year }} <span class="toggle-icon">+</span></h2>
<div id="publications-{{ year }}" class="publications-section{% if year == last_year %} open{% endif %}">
  {% endunless %}
  
  {% include archive-single.html %}
  
  {% if forloop.last %}
    </div>
  {% else %}
    {% capture next_post_year %}{{ sorted_publications[forloop.index].date | date: "%Y" }}{% endcapture %}
    {% if year != next_post_year %}
      </div>
    {% endif %}
  {% endif %}
{% endfor %}

<script>
var yearToggles = document.querySelectorAll('.year-toggle');
yearToggles.forEach(function(toggle) {
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
.year-toggle {
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
