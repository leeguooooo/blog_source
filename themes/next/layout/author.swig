{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %} {{ page.author }} | {{ config.title }} {% endblock %}

{% block content %}

  <section id="posts" class="posts-collapse">
    <h2>{{ page.author }} <small>( {{ page.posts.length }} 篇 )</h2> </small>
    <p style="font-size:12px">{{ config.authors[page.author] }}</p>

    {% for post in page.posts %}
      {{ post_template.render(post) }}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
