---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

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

{% for post in sorted_publications %}
  {% capture current_year %}{{ post.date | date: "%Y" }}{% endcapture %}
  
  {% unless year == current_year %}
    {% assign year = current_year %}
    <details>
      <summary class="year-toggle">{{ year }}</summary>
      <div id="publications-{{ year }}" class="publications-section">
  {% endunless %}
  
  {% include archive-single.html %}
  
  {% if forloop.last %}
      </div>
    </details>
  {% else %}
    {% capture next_post_year %}{{ sorted_publications[forloop.index].date | date: "%Y" }}{% endcapture %}
    {% if year != next_post_year %}
      </div>
    </details>
    {% endif %}
  {% endif %}
{% endfor %}

<style>
.year-toggle {
  cursor: pointer;
  font-weight: bold;
}

.publications-section {
  margin-left: 1em;
  margin-bottom: 1em;
}

details:not([open]) .publications-section {
  display: none;
}
</style>

