FROM registry.access.redhat.com/ubi8/openjdk-11-runtime:1.9

ADD target/app.jar /

ENTRYPOINT [“java”, “-jar”, "app.jar"]
