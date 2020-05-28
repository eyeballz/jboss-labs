# vim: ft=yaml
# Custom Pillar Data for jboss

jboss:
  enabled: true
  service:
    user: 'jboss'
  pkg:
    # JBoss AS 4.2.3 GA
    installer: "https://downloads.sourceforge.net/project/jboss/JBoss/JBoss-4.2.3.GA/jboss-4.2.3.GA-jdk6.zip"
    release: "4.2.3.GA"
    human_version: "4.2.3"
    compression_type: "zip"

    # JBoss 4 requires a JDK of version 6u45 and below 
    jdk_blob_path: "https://github.com/eyeballz/binary_jboss/raw/master/jdk-6u45-se-linux-x64.bin"
    jdk_install_release: "jdk-6u45-se-linux-x64.bin"
    jdk_install_location: "/opt/"
    jdk_install_name: "jdk1.6.0_45"
