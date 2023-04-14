#FROM registry.access.redhat.com/ubi8/openjdk-11-runtime:1.9
FROM registry.access.redhat.com/ubi8/openjdk-11-runtime:1.15

USER root

RUN rpm -e --nodeps $(rpm -qa '*rpm*' '*dnf*' '*libsolv*' '*hawkey*' 'yum*')

# The same user defined in the base image.
USER 185

COPY target/app.jar $HOME

ENTRYPOINT ["java","-jar","app.jar"]
