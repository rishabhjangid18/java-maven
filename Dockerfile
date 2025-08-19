# Use official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the built jar file from target folder into container
COPY target/*.jar app.jar

# Run the Java application
ENTRYPOINT ["java", "-jar", "app.jar"]
