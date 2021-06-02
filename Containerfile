FROM registry.access.redhat.com/ubi8/openjdk-11-runtime:1.9

COPY target/app.jar $HOME

ENTRYPOINT ["java","-jar","app.jar"]
