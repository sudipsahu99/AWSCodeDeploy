# Use the official OpenJDK 17 image from Docker Hub
#FROM public.ecr.aws/docker/library/eclipse-temurin:17-jdk
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
