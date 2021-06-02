FROM registry.access.redhat.com/ubi8/openjdk-11-runtime:1.9

ADD app.jar /

ENTRYPOINT [“java”, “-jar”, "app.jar"]
