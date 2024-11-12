# Use an official OpenJDK 8 image as the base
FROM openjdk:8-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY syncService-0.0.1-SNAPSHOT.jar /app/syncService.jar

# Expose the port that the Spring Boot app will run on
EXPOSE 9010

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/syncService.jar"]
