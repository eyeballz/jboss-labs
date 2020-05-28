# special mockup states here
#
{%- from "jboss/map.jinja" import jboss with context %}

test_mockup_init__clone_joaomatosf_jexboss_from_github:
  git.cloned:
    - name: https://github.com/joaomatosf/jexboss
    - target: "/opt/jexboss"

test_mockup_init__pip_install:
  pkg.installed:
    - name: 'python-pip'

test_mockup_init__pip_requirements_txt_jexboss_from_github:
  cmd.run:
    - name: "sudo -H pip install -r /opt/jexboss/requires.txt"
