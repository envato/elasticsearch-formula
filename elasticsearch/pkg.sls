include:
  - elasticsearch.repo

{% from "elasticsearch/map.jinja" import elasticsearch,java with context %}

java_pkg:
  pkg.installed:
    - name: {{ java.lookup.pkg }}

elasticsearch_pkg:
  pkg.installed:
    - name: {{ elasticsearch.lookup.pkg }}
    - require:
      - sls: elasticsearch.repo
