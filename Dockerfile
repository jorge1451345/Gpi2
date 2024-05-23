# Dockerfile
FROM maven:3.8.4-openjdk-11 AS build

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . .

# Run Maven to clean, compile, package and analyze with SonarQube
RUN mvn clean verify sonar:sonar -Dsonar.projectKey=your_project_key -Dsonar.host.url=http://localhost:9000 -Dsonar.login=your_sonar_token

# Create a new stage to keep the built artifact
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the built artifact from the build stage
COPY --from=build /app/target/your-artifact.jar .

# Set the entrypoint to run the application
ENTRYPOINT ["java", "-jar", "your-artifact.jar"]
