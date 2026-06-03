---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---
{% include base_path %}

Applied machine learning researcher working in **healthcare and medical data science**, with current emphasis on **clinical microbiology**, **trustworthy biomedical AI**, and **open-source translational software**. My long-term goal is to build an independent research group focused on clinically grounded AI systems that help health professionals and biomedical researchers solve real problems with multimodal data.

My profile combines competitive funding, collaborative translational research, supervision, and open science. I was awarded a **Marie Sklodowska-Curie Postdoctoral Fellowship (MSCA PF)** for **OUTBRAID**, and my work spans microbiology, speech, cardiology, and medical imaging under a common agenda of applied AI for health.

<div id="cv-export-controls" class="cv-export-controls" aria-label="CV download options">
  <button type="button" id="cv-download-button" class="btn cv-export__button"><i class="fa fa-download" aria-hidden="true"></i> Download CV</button>
  <details class="cv-export__details">
    <summary>Sections</summary>
    <div class="cv-export__menu" role="group" aria-label="Optional CV sections">
      <label><input type="checkbox" value="Grants obtained" data-cv-section checked> Grants obtained</label>
      <label><input type="checkbox" value="Publications" data-cv-section checked> Publications</label>
      <label><input type="checkbox" value="Teaching" data-cv-section checked> Teaching</label>
      <label><input type="checkbox" value="Invited Talks" data-cv-section checked> Invited Talks</label>
      <label><input type="checkbox" value="Talks" data-cv-section checked> Talks</label>
      <label><input type="checkbox" value="Reviewing" data-cv-section checked> Reviewing</label>
      <label><input type="checkbox" value="Training & Professional Development" data-cv-section checked> Training & Professional Development</label>
      <label><input type="checkbox" value="Workshops" data-cv-section checked> Workshops</label>
      <div class="cv-export__actions">
        <button type="button" id="cv-select-all" class="cv-export__action">Select all</button>
        <button type="button" id="cv-clear-optional" class="cv-export__action">Clear optional</button>
      </div>
    </div>
  </details>
</div>

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
  * __Supervisors__: [Prof. Pablo M. Olmos](https://www.tsc.uc3m.es/~olmos/) and [Dr. Vanessa Gómez-Verdejo](https://vanessa.webs.tsc.uc3m.es) at the university and [Dr. Belén Rodríguez-Sánchez](https://scholar.google.es/citations?user=W9sZbBoAAAAJ&hl=es) at the hospital.
* 2019-2020: Research Assistant

  * __Company__: Universidad Carlos III de Madrid (UC3M), Signal Theory and Communications Department
  * __Field__: Bayesian ML
  * __Supervisor__: [Prof. Pablo M. Olmos](https://www.tsc.uc3m.es/~olmos/)
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

{% assign undergrad_courses = site.teaching | where: "type", "Undergraduate course" | size %}
{% assign master_courses = site.teaching | where: "type", "Master course" | size %}
{% assign corporate_training = site.teaching | where: "type", "Corporate training" | size %}
{% assign taught_courses = undergrad_courses | plus: master_courses | plus: corporate_training %}
{% assign thesis_bsc = site.teaching | where: "type", "Bachelor Thesis" | size %}
{% assign thesis_msc = site.teaching | where: "type", "Master Thesis" | size %}
I have contributed to {{ taught_courses }} taught courses, supervised {{ thesis_bsc }} BSc theses and {{ thesis_msc }} MSc theses, and I currently co-supervise 4 PhD students.

Selected ongoing PhD co-supervision (in progress)
-------------------------------------------------

* Yukino Gütlin — Predicting antimicrobial resistance, virulence, and invasiveness from MALDI-TOF MS data. Main supervisor: Prof. Adrian Egli. Co-supervisor: Alejandro Guerrero-López. Started 2024; co-supervising since July 2025.
* Eline Meijer — Boosting the resolution of MALDI-TOF mass spectra using transformer-based machine learning. Main supervisor: Prof. Adrian Egli. Co-supervisor: Alejandro Guerrero-López. Started January 2025; co-supervising since July 2025.
* Janis Rogenmonser — Advancing antimicrobial resistance prediction from whole-genome sequencing. Main supervisor: Prof. Adrian Egli. Co-supervisor: Alejandro Guerrero-López. Started September 2025; co-supervising since September 2025.

<!-- Undergraduate Courses -->

<h3 class="section-toggle">Undergraduate Courses <span id="toggle-icon-undergraduate-section" class="toggle-icon">+</span></h3>
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

<h3 class="section-toggle">Bachelor Theses <span id="toggle-icon-bt-section" class="toggle-icon">+</span></h3>
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

<h3 class="section-toggle">Master Programs <span id="toggle-icon-master-section" class="toggle-icon">+</span></h3>
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

<h3 class="section-toggle">Master Theses <span id="toggle-icon-mt-section" class="toggle-icon">+</span></h3>
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

<h3 class="section-toggle">Corporate Training <span id="toggle-icon-corporate-section" class="toggle-icon">+</span></h3>
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

<h3 class="section-toggle">Teaching evaluations & Recognitions <span id="toggle-icon-evaluation-section" class="toggle-icon">+</span></h3>
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
.cv-export-controls {
  display: flex;
  flex-wrap: wrap;
  align-items: flex-start;
  gap: 0.5rem;
  margin: 1.25rem 0 1.75rem;
  padding: 0.75rem;
  border: 1px solid #d9dee3;
  border-radius: 4px;
  background: #f8f9fa;
}

.cv-export__button {
  margin: 0;
}

.cv-export__button .fa {
  margin-right: 0.35rem;
}

.cv-export__details {
  position: relative;
  min-width: 12rem;
  font-family: sans-serif;
}

.cv-export__details summary {
  display: inline-flex;
  align-items: center;
  min-height: 2.25rem;
  padding: 0 0.75rem;
  border: 1px solid #c8cfd6;
  border-radius: 4px;
  background: #fff;
  cursor: pointer;
  font-weight: 700;
}

.cv-export__menu {
  position: absolute;
  top: calc(100% + 0.35rem);
  left: 0;
  z-index: 20;
  width: min(19rem, calc(100vw - 2rem));
  padding: 0.75rem;
  border: 1px solid #c8cfd6;
  border-radius: 4px;
  background: #fff;
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.14);
}

.cv-export__menu label {
  display: flex;
  align-items: flex-start;
  gap: 0.45rem;
  margin: 0 0 0.45rem;
  line-height: 1.3;
}

.cv-export__menu input {
  flex: 0 0 auto;
  margin-top: 0.18rem;
}

.cv-export__actions {
  display: flex;
  gap: 0.4rem;
  margin-top: 0.7rem;
  padding-top: 0.65rem;
  border-top: 1px solid #e2e6ea;
}

.cv-export__action {
  padding: 0.35rem 0.55rem;
  border: 1px solid #c8cfd6;
  border-radius: 4px;
  background: #f8f9fa;
  cursor: pointer;
  font: inherit;
  font-size: 0.85em;
}

.cv-export__action:hover {
  background: #eef1f4;
}

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

@media (max-width: 600px) {
  .cv-export-controls {
    display: block;
  }

  .cv-export__details {
    margin-top: 0.5rem;
  }

  .cv-export__menu {
    position: static;
    width: auto;
    margin-top: 0.5rem;
    box-shadow: none;
  }
}
</style>

<script>
(function () {
  var collapseContentSelector = '.section-content, .publications-section, .year-content';
  var toggleSelector = '.section-toggle, .category-toggle, .year-toggle';
  var checkboxSelector = '#cv-export-controls input[data-cv-section]';

  function toArray(list) {
    return Array.prototype.slice.call(list);
  }

  function isExpanded(element) {
    return window.getComputedStyle(element).display !== 'none';
  }

  function setExpanded(toggle, content, expanded) {
    var toggleIcon = toggle ? toggle.querySelector('.toggle-icon') : null;

    content.style.display = expanded ? 'block' : 'none';

    if (toggleIcon) {
      toggleIcon.textContent = expanded ? '-' : '+';
    }

    if (toggle) {
      toggle.setAttribute('aria-expanded', expanded ? 'true' : 'false');
    }
  }

  function initToggle(toggle, index) {
    var content = toggle.nextElementSibling;

    if (!content || !content.matches(collapseContentSelector)) {
      return;
    }

    if (!content.id) {
      content.id = 'cv-collapse-section-' + index;
    }

    toggle.setAttribute('role', 'button');
    toggle.setAttribute('tabindex', '0');
    toggle.setAttribute('aria-controls', content.id);
    setExpanded(toggle, content, isExpanded(content));

    toggle.addEventListener('click', function () {
      setExpanded(toggle, content, !isExpanded(content));
    });

    toggle.addEventListener('keydown', function (event) {
      if (event.key === 'Enter' || event.key === ' ') {
        event.preventDefault();
        setExpanded(toggle, content, !isExpanded(content));
      }
    });
  }

  function getCvCheckboxes() {
    return toArray(document.querySelectorAll(checkboxSelector));
  }

  function normalizeText(text) {
    return text.replace(/\s+/g, ' ').trim().toLowerCase();
  }

  function mapSectionNames(names) {
    var map = {};

    names.forEach(function (name) {
      map[normalizeText(name)] = true;
    });

    return map;
  }

  function getAllOptionalSectionNames() {
    return getCvCheckboxes().map(function (checkbox) {
      return checkbox.value;
    });
  }

  function getSelectedSectionNames() {
    return getCvCheckboxes()
      .filter(function (checkbox) {
        return checkbox.checked;
      })
      .map(function (checkbox) {
        return checkbox.value;
      });
  }

  function removeElement(element) {
    if (element && element.parentNode) {
      element.parentNode.removeChild(element);
    }
  }

  function removeUnselectedSections(clone) {
    var optionalSections = mapSectionNames(getAllOptionalSectionNames());
    var selectedSections = mapSectionNames(getSelectedSectionNames());
    var node = clone.firstElementChild;

    while (node) {
      if (node.tagName && node.tagName.toLowerCase() === 'h1') {
        var sectionName = normalizeText(node.textContent);

        if (optionalSections[sectionName] && !selectedSections[sectionName]) {
          var next = node.nextElementSibling;
          removeElement(node);

          while (next && next.tagName.toLowerCase() !== 'h1') {
            var nodeToRemove = next;
            next = next.nextElementSibling;
            removeElement(nodeToRemove);
          }

          node = next;
          continue;
        }
      }

      node = node.nextElementSibling;
    }
  }

  function prepareExportContent() {
    var source = document.querySelector('.archive');
    var clone;

    if (!source) {
      return '';
    }

    clone = source.cloneNode(true);
    toArray(clone.querySelectorAll('#cv-export-controls, script, style')).forEach(removeElement);
    removeUnselectedSections(clone);

    toArray(clone.querySelectorAll(collapseContentSelector)).forEach(function (content) {
      content.style.display = 'block';
    });

    toArray(clone.querySelectorAll('.toggle-icon')).forEach(removeElement);

    toArray(clone.querySelectorAll('[onclick]')).forEach(function (element) {
      element.removeAttribute('onclick');
    });

    toArray(clone.querySelectorAll('a[href]')).forEach(function (link) {
      var href = link.getAttribute('href');

      if (href && href.charAt(0) !== '#') {
        link.setAttribute('href', link.href);
      }
    });

    toArray(clone.querySelectorAll('img[src]')).forEach(function (image) {
      image.setAttribute('src', image.src);
    });

    return clone.innerHTML;
  }

  function escapeHtml(text) {
    return text
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;')
      .replace(/"/g, '&quot;')
      .replace(/'/g, '&#39;');
  }

  function buildExportDocument(content) {
    var titleElement = document.querySelector('.page__title');
    var title = titleElement ? titleElement.textContent.trim() : 'CV';

    return [
      '<!doctype html>',
      '<html lang="en">',
      '<head>',
      '<meta charset="utf-8">',
      '<meta name="viewport" content="width=device-width, initial-scale=1">',
      '<title>' + escapeHtml(title) + ' - Alejandro Guerrero-Lopez</title>',
      '<style>',
      'body { max-width: 860px; margin: 2rem auto; padding: 0 1.25rem; color: #222; font-family: Arial, Helvetica, sans-serif; line-height: 1.5; }',
      'h1, h2, h3 { line-height: 1.2; margin: 1.4em 0 0.45em; }',
      'h1 { padding-bottom: 0.35em; border-bottom: 1px solid #d9dee3; font-size: 1.75rem; }',
      'h2 { font-size: 1.35rem; }',
      'h3 { font-size: 1.1rem; }',
      'a { color: #0645ad; }',
      'ul { padding-left: 1.3rem; }',
      'li { margin-bottom: 0.35rem; }',
      '.section-content, .publications-section, .year-content { display: block !important; }',
      '.archive__item-title { margin-bottom: 0.2rem; }',
      '.page__meta, .page__date, .archive__item-excerpt { margin: 0.2rem 0 0.6rem; color: #555; }',
      '@page { margin: 18mm; }',
      '@media print { body { max-width: none; margin: 0; padding: 0; } a[href^="http"]::after { content: " (" attr(href) ")"; font-size: 0.8em; color: #555; } }',
      '</style>',
      '</head>',
      '<body>',
      content,
      '</body>',
      '</html>'
    ].join('\n');
  }

  function padDatePart(number) {
    return String(number).length === 1 ? '0' + number : String(number);
  }

  function getExportFilename() {
    var today = new Date();
    var stamp = [
      today.getFullYear(),
      padDatePart(today.getMonth() + 1),
      padDatePart(today.getDate())
    ].join('-');

    return 'alejandro-guerrero-lopez-cv-' + stamp + '.html';
  }

  function downloadCv() {
    var html = buildExportDocument(prepareExportContent());
    var blob = new Blob([html], { type: 'text/html;charset=utf-8' });
    var url = URL.createObjectURL(blob);
    var link = document.createElement('a');

    link.href = url;
    link.download = getExportFilename();
    document.body.appendChild(link);
    link.click();

    window.setTimeout(function () {
      URL.revokeObjectURL(url);
      removeElement(link);
    }, 1000);
  }

  toArray(document.querySelectorAll(toggleSelector)).forEach(initToggle);

  window.toggleSection = function (sectionId) {
    var content = document.getElementById(sectionId);
    var toggle = document.querySelector('[aria-controls="' + sectionId + '"]');

    if (content) {
      setExpanded(toggle, content, !isExpanded(content));
    }
  };

  var downloadButton = document.getElementById('cv-download-button');
  var selectAllButton = document.getElementById('cv-select-all');
  var clearOptionalButton = document.getElementById('cv-clear-optional');

  if (downloadButton) {
    downloadButton.addEventListener('click', downloadCv);
  }

  if (selectAllButton) {
    selectAllButton.addEventListener('click', function () {
      getCvCheckboxes().forEach(function (checkbox) {
        checkbox.checked = true;
      });
    });
  }

  if (clearOptionalButton) {
    clearOptionalButton.addEventListener('click', function () {
      getCvCheckboxes().forEach(function (checkbox) {
        checkbox.checked = false;
      });
    });
  }
}());
</script>
