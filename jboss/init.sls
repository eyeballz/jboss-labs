# vim: ft=sls
# Init jboss
{%- from "jboss/map.jinja" import jboss with context %}
{# Below is an example of having a toggle for the state #}

{% if jboss.enabled %}
include:
  - jboss.install
  - jboss.config
  - jboss.service
{% else %}
'jboss-formula disabled':
  test.succeed_without_changes
{% endif %}

