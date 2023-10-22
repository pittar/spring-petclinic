FROM registry.access.redhat.com/ubi8/openjdk-11-runtime:latest

COPY target/app.jar $HOME

ENTRYPOINT ["java","-jar","app.jar"]
