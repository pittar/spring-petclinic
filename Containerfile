#FROM registry.access.redhat.com/ubi8/openjdk-11-runtime:1.15
FROM registry.access.redhat.com/ubi8/openjdk-11-runtime:latest

USER root

# Delete package managers in final image for security hardening purposes.
RUN rpm -e --nodeps $(rpm -qa '*rpm*' '*dnf*' '*libsolv*' '*hawkey*' 'yum*')

# The same user defined in the base image.
USER 185

COPY target/app.jar $HOME

ENTRYPOINT ["java","-jar","app.jar"]
