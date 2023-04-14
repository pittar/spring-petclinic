FROM registry.access.redhat.com/ubi8/openjdk-11-runtime:1.9

USER root

RUN rpm -e --nodeps $(rpm -qa '*rpm*' '*dnf*' '*libsolv*' '*hawkey*' 'yum*')

USER 1001

COPY target/app.jar $HOME

ENTRYPOINT ["java","-jar","app.jar"]
