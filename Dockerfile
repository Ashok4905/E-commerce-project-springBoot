# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the target directory
COPY target/*.jar app.jar

# Expose the application's port (Change if your Spring Boot app uses a different port)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

