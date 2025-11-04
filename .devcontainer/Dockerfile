# Use a base image with JDK 21
FROM eclipse-temurin:21

# Install Gradle
RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://services.gradle.org/distributions/gradle-8.9-bin.zip -O /tmp/gradle.zip && \
    unzip /tmp/gradle.zip -d /opt/ && \
    ln -s /opt/gradle-8.9 /opt/gradle && \
    echo 'export PATH=$PATH:/opt/gradle/bin' >> /etc/profile.d/gradle.sh && \
    rm /tmp/gradle.zip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set environment variable for Gradle
ENV PATH="${PATH}:/opt/gradle/bin"

# Default work directory inside container
WORKDIR /workspace
