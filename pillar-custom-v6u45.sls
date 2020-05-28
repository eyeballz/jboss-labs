# vim: ft=yaml
# Custom Pillar Data for jboss

jboss:
  enabled: true
  service:
    user: 'jboss'
  pkg:
    # JBoss AS 6.1.0 Final
    installer: "https://download.jboss.org/jbossas/6.1/jboss-as-distribution-6.1.0.Final.zip"
    release: "6.1.0.Final"
    human_version: "6.1.0"
    compression_type: "zip"

    # JBoss 6 requires a JDK of version 6u45 and below 
    jdk_blob_path: "https://github.com/eyeballz/binary_jboss/raw/master/jdk-6u45-se-linux-x64.bin"
    jdk_install_release: "jdk-6u45-se-linux-x64.bin"
    jdk_install_location: "/opt/"
    jdk_install_name: "jdk1.6.0_45"


