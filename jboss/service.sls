# vim: ft=sls
# Manage service for service jboss
{%- from "jboss/map.jinja" import jboss with context %}

'jboss-service not configured':
  test.succeed_without_changes

#jboss_service:
#  service.running:
#    - name: jboss
#    - enable: True
#    - watch:
#        - file: jboss_config

