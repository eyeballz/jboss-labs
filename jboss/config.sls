# vim: ft=sls
# How to configure jboss
{%- from "jboss/map.jinja" import jboss with context %}

#jboss_config__supply_run_configuration:
#  file.managed:
#    - name: "/usr/local/share/jboss-{{ jboss.pkg.release }}/bin/run.conf"
#    - source: salt://jboss/files/run.conf
#    - user: root
#    - group: root
#    - mode: 0600
#    - template: jinja
#

###
# Fixes:
#
#-Djava.endorsed.dirs=/usr/local/share/jboss-6.1.0.Final/lib/endorsed is not supported. Endorsed standards and standalone APIs
#in modular form will be supported via the concept of upgradeable modules.
#Error: Could not create the Java Virtual Machine.
#Error: A fatal exception has occurred. Program will exit.

#jboss_config__supply_run_script_without_endorsed_directories:
#  file.managed:
#    - name: "/usr/local/share/jboss-{{ jboss.pkg.release }}/bin/run.sh"
#    - source: salt://jboss/files/run.sh
#    - user: root
#    - group: root
#    - mode: 0755
#    - template: jinja
#
