# vie: ft=sls
# How to install jboss
{%- from "jboss/map.jinja" import jboss with context %}


# Userspace Dependencies
#jboss_install__default_jdk:
#  pkg.installed:
#    - name: 'default-jdk'
#
#jboss_install__dependencies:
#  pkg.installed:
#    - name: "libxml-java"
#

jboss_install__transfer_reqiured_jdk:
  file.managed:
    - name: "/tmp/jdk.bin"
    - source: {{ jboss.pkg.jdk_blob_path }}
    - skip_verify: true

jboss_install__run_required_jdk_installer:
  cmd.run:
    - name: "sudo /bin/bash /tmp/jdk.bin"
    - cwd: "/opt"
    - creates: "/opt/{{ jboss.pkg.jdk_install_name }}"

jboss_install__add_jboss_user:
  user.present:
    - name: {{ jboss.service.user }}
    - shell: /bin/bash

jboss_install__add_jdk_to_path:
  file.managed:
    - name: /etc/profile.d/999-update-path.sh
    - contents: |
        #!/bin/bash
        export PATH="${PATH}:/opt/{{ jboss.pkg.jdk_install_name }}/bin"
        export LAUNCH_JBOSS_IN_BACKGROUND="1"

# Jboss installer setup
jboss_install__download_jboss_application_server:
  file.managed:
    - name: "/tmp/jboss.{{ jboss.pkg.compression_type }}"
    - source: {{ jboss.pkg.installer }}
    - skip_verify: true
    - user: {{ jboss.service.user }}
    - group: {{ jboss.service.user }}


jboss_install__extract_jboss_binaries:
  archive.extracted:
    - name: '/usr/local/share/'
    - source: "/tmp/jboss.{{ jboss.pkg.compression_type }}"
    - user: {{ jboss.service.user }}

