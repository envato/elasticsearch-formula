include:
  - elasticsearch.pkg

elasticsearch_shield_logging_cfg: 
  file.managed: 
    - name: /etc/elasticsearch/shield/logging.yml 
    - source: salt://elasticsearch/files/shield/logging.yml 
    - template: jinja 
    - user: root 
    - require: 
      - sls: elasticsearch.plugins

elasticsearch_shield_role_mapping_cfg:
  file.managed:
    - name: /etc/elasticsearch/shield/role_mapping.yml
    - source: salt://elasticsearch/files/shield/role_mapping.yml
    - template: jinja
    - user: root 
    - require:
      - sls: elasticsearch.plugins

elasticsearch_shield_roles_cfg:
  file.managed:
    - name: /etc/elasticsearch/shield/roles.yml
    - source: salt://elasticsearch/files/shield/roles.yml
    - template: jinja
    - user: root 
    - require:
      - sls: elasticsearch.plugins

elasticsearch_shield_users_cfg:
  file.managed:
    - name: /etc/elasticsearch/shield/users
    - source: salt://elasticsearch/files/shield/users
    - template: jinja
    - user: root
    - require:
      - sls: elasticsearch.plugins
