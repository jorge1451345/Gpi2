#!/bin/bash

# Start SonarQube
docker-compose up -d sonarqube

# Wait for SonarQube to be ready
echo "Waiting for SonarQube to start..."
sleep 30

# Build and analyze the Maven project
docker-compose up --build maven-app

# Shutdown the containers after the process
docker-compose down
