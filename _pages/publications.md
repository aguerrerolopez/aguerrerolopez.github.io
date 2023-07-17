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

{% assign sorted_publications = site.publications | sort: 'date' | reverse %}

{% for post in sorted_publications %}
  {% capture current_year %}{{ post.date | date: "%Y" }}{% endcapture %}
  

    {% assign year = current_year %}
    <h2 class="year-toggle" onclick="toggleYear('{{ year }}')">{{ year }} <span id="toggle-icon-{{ year }}" class="toggle-icon">+</span></h2>
    <div id="publications-{{ year }}" class="publications-section">

  
  {% include archive-single.html %}
  
  {% if forloop.last %}
    </div>
  {% else %}
    {% capture next_post_year %}{{ sorted_publications[forloop.index].date | date: "%Y" }}{% endcapture %}
    {% if year != next_post_year %}
    
    {% endif %}
  {% endif %}
{% endfor %}

<script>
function toggleYear(year) {
  var publicationsSection = document.getElementById("publications-" + year);
  var toggleIcon = document.getElementById("toggle-icon-" + year);
  
  if (publicationsSection.style.display === "none") {
    publicationsSection.style.display = "block";
    toggleIcon.innerHTML = "-";
  } else {
    publicationsSection.style.display = "none";
    toggleIcon.innerHTML = "+";
  }
}
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
