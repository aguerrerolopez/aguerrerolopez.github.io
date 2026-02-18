---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---
{% include base_path %}

Academic background
===================

* Ph.D. in Bayesian Machine Learning applied to Personalised Medicine, [Universidad Carlos III de Madrid](https://www.uc3m.es/Home), May 2023
* M.Sc. in Information Health Engineering, [Universidad Carlos III de Madrid](https://www.uc3m.es/Home), June 2020
* B.Sc. in Telematic Engineering, [Universitat de les Illes Balears](https://www.uib.es/es/), June 2019

Professional history
====================

Academic experience
-------------------

* 07/2025–: Postdoctoral researcher (Prof. Adrian Egli’s group)

  * __Company__: University of Zurich, [Institute for Medical Microbiology](https://www.imm.uzh.ch), [Applied  Microbiology  Research (AMR) lab](https://appliedmicrobiologyresearch.net)
  * __Field__: Applied ML to Microbiology
  * 07/2025–06/2026: Postdoctoral researcher
  * 07/2026–: **Marie Skłodowska‑Curie Postdoctoral Fellow (MSCA PF)**
* 2024-2025: Visiting professor in Data science

  * __Company__: UC3M, Signal Theory and Communications Department
  * __Field__: Bayesian ML
* 2023-2024: Postdoctoral researcher

  * __Company__: [Universidad Politécnica de Madrid (UPM)](https://www.upm.es), [Bioengineering and Optoelectronics Group](http://www.byo.upm.es/BYO/research)
  * __Field__: Bayesian ML applied to speech
  * __Supervisor__: [Prof. Juan Ignacio Godino Llorente](http://www.byo.upm.es/BYO/people/juan-ignacio-godino-llorente)
* 2020-2023: Ph.D. Candidate

  * __Company__: UC3M, Signal Theory and Communications Department and [Gregorio Marañon Health Research Institute](https://www.iisgm.com/), Microbiology and Infectious Diseases Department
  * __Field__: Bayesian ML and its application to microbiology
  * __Supervisors__: [Dr. Pablo M. Olmos](https://www.tsc.uc3m.es/~olmos/) and [Dr. Vanessa Gómez-Verdejo](https://vanessa.webs.tsc.uc3m.es) at the university and [Dr. Belén Rodríguez-Sánchez](https://scholar.google.es/citations?user=W9sZbBoAAAAJ&hl=es) at the hospital.
* 2019-2020: Research Assistant

  * __Company__: Universidad Carlos III de Madrid (UC3M), Signal Theory and Communications Department
  * __Field__: Bayesian ML
  * __Supervisor__: [Dr. Pablo M. Olmos](https://www.tsc.uc3m.es/~olmos/)
* 2017-2018: Research Assistant

  * __Company__: Universitat de les Illes Balears, [UGIVIA](http://ugivia.uib.es/membres/) group
  * __Field__: Computer Vision
  * __Supervisors__: [Prof. Francisco J. Perales](https://www.uib.es/es/personal/ABDMyNjY/) and [Dr. Silvia Ramis](https://www.uib.cat/personal/ABjExMTI3OA/)

Industry experience
-------------------

* 2018-2019: Telecommunication Engineer

  * __Company__: [ALCORT S.L.](https://alcort.net/sobre-nosotros/)
  * __Field__: Fiber to the Home
  * __Supervisors__: [Alejandro Cortés](https://www.linkedin.com/in/alejandro-cort%C3%A9s-956a063/) and [Teresa Reus](https://www.linkedin.com/in/teresareusgelabert/)

Grants obtained
===============

* Marie Skłodowska-Curie Postdoctoral Fellowship (European Commission) 01/07/2026 – 30/06/2028
  * Project: OUTBRAID — OUTBreak AI-driven Detection: Enhancing MALDI-TOF outbreak detection with multimodal AI
  * Supervisor: Prof. Adrian Egli (University of Zurich)
  * Highly competitive: 17,066 applicants, 1,610 funded (9.6% success rate)

Publications
============

{% assign peer_reviewed = site.publications | where: "category", "Peer-review Journals" %}
{% assign under_review = site.publications | where: "category", "Preprints" %}
I published a total of {{ peer_reviewed.size }} papers, and {{ under_review.size }} are currently under review.

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
        {% include archive-single.html %}
      {% endfor %}
</div>
  {% endif %}
{% endfor %}

Teaching
========

{% assign course_count = site.teaching | where: "type", "Undergraduate course" | size %}
{% assign thesis_bsc = site.teaching | where: "thesis_level", "BSc" | size %}
{% assign thesis_msc = site.teaching | where: "thesis_level", "MSc" | size %}
{% assign thesis_phd = site.teaching | where: "thesis_level", "PhD" | size %}
I taught {{ course_count }} courses, supervised {{ thesis_bsc }} BSc theses, {{ thesis_msc }} MSc theses, and {{ thesis_phd }} PhD theses.

Ongoing PhD co-supervision (in progress)
----------------------------------------

* Yukino Gütlin — Predicting antimicrobial resistance (AMR), virulence, and invasiveness from MALDI-TOF MS data to support clinicians’ decisions on the usage of antimicrobials. Started 2024; co-supervising since July 2025. Supervisor: Prof. Adrian Egli. Co-supervisor: Alejandro Guerrero-López
* Eline Meijer — Boosting resolution of MALDI-TOF mass spectra using transformer-based machine learning. Started January 2025; co-supervising since July 2025. Supervisor: Prof. Adrian Egli. Co-supervisor: Alejandro Guerrero-López

<!-- Undergraduate Courses -->

<h3 class="section-toggle" onclick="toggleSection('undergraduate-section')">Undergraduate Courses <span id="toggle-icon-undergraduate-section" class="toggle-icon">+</span></h3>
<div id="undergraduate-section" class="section-content">
  <ul class="cv-list">
  {% for post in site.teaching %}
    {% if post.type == "Undergraduate course" %}
      {% include archive-single-cv.html %}
    {% endif %}
  {% endfor %}
  </ul>
</div>

<!-- Bachelor Theses -->

<h3 class="section-toggle" onclick="toggleSection('bt-section')">Bachelor Theses <span id="toggle-icon-corporate-section" class="toggle-icon">+</span></h3>
<div id="bt-section" class="section-content">
  <ul class="cv-list">
  {% for post in site.teaching %}
    {% if post.type == "Bachelor Thesis" %}
      {% include archive-single-cv.html %}
    {% endif %}
  {% endfor %}
  </ul>
</div>

<!-- Master Programs -->

<h3 class="section-toggle" onclick="toggleSection('master-section')">Master Programs <span id="toggle-icon-master-section" class="toggle-icon">+</span></h3>
<div id="master-section" class="section-content">
  <ul class="cv-list">
  {% for post in site.teaching %}
    {% if post.type == "Master course" %}
      {% include archive-single-cv.html %}
    {% endif %}
  {% endfor %}
  </ul>
</div>

<!-- Master Theses -->

<h3 class="section-toggle" onclick="toggleSection('mt-section')">Master Theses <span id="toggle-icon-corporate-section" class="toggle-icon">+</span></h3>
<div id="mt-section" class="section-content">
  <ul class="cv-list">
  {% for post in site.teaching %}
    {% if post.type == "Master Thesis" %}
      {% include archive-single-cv.html %}
    {% endif %}
  {% endfor %}
  </ul>
</div>

<!-- Corporate Training -->

<h3 class="section-toggle" onclick="toggleSection('corporate-section')">Corporate Training <span id="toggle-icon-corporate-section" class="toggle-icon">+</span></h3>
<div id="corporate-section" class="section-content">
  <ul class="cv-list">
  {% for post in site.teaching %}
    {% if post.type == "Corporate training" %}
      {% include archive-single-cv.html %}
    {% endif %}
  {% endfor %}
  </ul>
</div>

<!-- Teaching Evaluations & Recognitions -->

<h3 class="section-toggle" onclick="toggleSection('evaluation-section')">Teaching evaluations & Recognitions <span id="toggle-icon-evaluation-section" class="toggle-icon">+</span></h3>
<div id="evaluation-section" class="section-content">
  <ul>
    <li>Based on <strong>9 official teaching evaluations</strong>, achieved an average score of <strong>4.83 / 5</strong> with a standard deviation of <strong>0.29</strong>.</li>
    <li>Recipient of multiple formal letters of recognition from Universidad Carlos III de Madrid for outstanding teaching performance.</li>
    <li><a href="/assets/felicitaciones.pdf" target="_blank">Full record of evaluations and recognition letters (PDF)</a></li>
  </ul>
</div>

Invited Talks
=============

{% assign invited_talks = site.talks | where: "invited", true | sort: 'date' | reverse %}
{% assign last_year = "" %}

<div class="cv-container">
  {% for post in invited_talks %}
    {% capture current_year %}{{ post.date | date: "%Y" }}{% endcapture %}

    {% unless last_year == current_year %}
      {% assign last_year = current_year %}
      <h3 class="year-toggle">{{ last_year }} <span class="toggle-icon">+</span></h3>
      <div class="year-content">
    {% endunless %}

    {% include archive-single-talk-cv.html %}

    {% if forloop.last %}
      </div>
    {% else %}
      {% capture next_talk_year %}{{ invited_talks[forloop.index].date | date: "%Y" }}{% endcapture %}
      {% if next_talk_year != last_year %}
        </div>
      {% endif %}
    {% endif %}
  {% endfor %}

</div>

Talks
=====

{% assign noninvited_talks = site.talks | where_exp: "t", "t.invited != true" | sort: 'date' | reverse %}
{% assign last_year = "" %}

<div class="cv-container">
  {% for post in noninvited_talks %}
    {% capture current_year %}{{ post.date | date: "%Y" }}{% endcapture %}

    {% unless last_year == current_year %}
      {% assign last_year = current_year %}
      <h3 class="year-toggle">{{ last_year }} <span class="toggle-icon">+</span></h3>
      <div class="year-content">
    {% endunless %}

    {% include archive-single-talk-cv.html %}

    {% if forloop.last %}
      </div>
    {% else %}
      {% capture next_talk_year %}{{ noninvited_talks[forloop.index].date | date: "%Y" }}{% endcapture %}
      {% if next_talk_year != last_year %}
        </div>
      {% endif %}
    {% endif %}
  {% endfor %}

</div>

Reviewing
=========

* IEEE JBHI, [certificate](https://publons.com/wos-op/review/author/ELOAqeQL/), [IEEE JBHI](https://www.embs.org/jbhi/), 2024 - currently
* mSystems, [certificate](https://publons.com/wos-op/review/author/BlaEXPKv/), [mSystems](https://journals.asm.org/journal/msystemsn), American Society for Microbiology, 2024
* Engineering Applications of Artificial Intelligence, [certificate](https://aguerrerolopez.github.io/images/Certificate_EAAI_Recognised.pdf), [EAAI](https://www.sciencedirect.com/journal/engineering-applications-of-artificial-intelligence), 2023 - currently
* Artificial Intelligence and Statistics, [certificate](http://aistats.org/aistats2023/reviewers.html), [AISTATS](http://aistats.org/aistats2023/), 2023 - currently
* Clinical Microbiology and Infection, [CMI](https://www.sciencedirect.com/journal/clinical-microbiology-and-infection), 2023 - currently

Training & Professional Development
===================================

* Project management for postdocs, University of Zurich Graduate Campus, 18/09/2025–19/09/2025 (Instructor: Dr. Carine Galli Marxer)
* Grant writing workshop for postdocs, University of Zurich Graduate Campus, 04/02/2026–13/02/2026 (Instructor: PhD Ingo Hebach)
* [Cambridge Ellis Machine Learning Summer School](http://www.ellis.eng.cam.ac.uk/summerschool/), University of Cambridge, Cambridge, United Kingdom, 2022
* Digital Health, the regulatory landscape, [Medidee](https://medidee.com), Laussane, Switzerland, 2022
* Teaching trainee at [DEMOTEC](https://eps.uib.cat/demotec/), UIB, Palma, Spain, 2016
* Volunteer instructor at the Science Fair at the [UIB](https://seras.uib.cat/ciencia/2016/) , 2015 and 2016

Workshops
=========

* Local organising committee of the 2nd Automatic Assessment of Parkinsonian Speech Workshop (AAPS'24) hosted by the Massachusetts Institute of Technology (MIT).
* Instructor at the ESCMID Workshop on Artificial Intelligence and Machine Learning in Medical Microbiology Diagnostics. More than 150+ participants.

<style>
.section-toggle {
  cursor: pointer;
  margin-bottom: 5px;
}

.section-content {
  display: none;
  margin-bottom: 20px;
}

.toggle-icon {
  margin-left: 5px;
}

.publications-section {
  display: none;
  margin-bottom: 20px;
}

.year-content {
    display: none; /* Hide the content by default */
  }

.category-toggle {
  cursor: pointer;
}
</style>

<script>
document.querySelectorAll('.year-toggle').forEach(function (toggle) {
    toggle.addEventListener('click', function () {
      var content = this.nextElementSibling;
      content.style.display = content.style.display === 'none' ? 'block' : 'none';
      this.querySelector('.toggle-icon').textContent = content.style.display === 'none' ? '+' : '-';
    });
  });

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
function toggleSection(sectionId) {
  var sectionContent = document.getElementById(sectionId);
  var toggleIcon = document.getElementById("toggle-icon-" + sectionId);
  
  if (sectionContent.style.display === "none") {
    sectionContent.style.display = "block";
    toggleIcon.innerHTML = "-";
  } else {
    sectionContent.style.display = "none";
    toggleIcon.innerHTML = "+";
  }
}
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
