# vim: ft=yaml
# Custom Pillar Data for jboss

jboss:
  enabled: true
  service:
    user: 'jboss'
  pkg:
    # JBoss AS 5.1.0 GA
    installer: "https://sourceforge.net/projects/jboss/files/JBoss/JBoss-5.1.0.GA/jboss-5.1.0.GA-jdk6.zip/download"
    release: "5.1.0.GA"
    human_version: "5.1.0"
    compression_type: "zip"

    # JBoss 5 requires a JDK of version 6u45 and below 
    jdk_blob_path: "https://github.com/eyeballz/binary_jboss/raw/master/jdk-6u45-se-linux-x64.bin"
    jdk_install_release: "jdk-6u45-se-linux-x64.bin"
    jdk_install_location: "/opt/"
    jdk_install_name: "jdk1.6.0_45"
