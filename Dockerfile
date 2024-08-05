# stable official Java runtime base image
FROM openjdk:17-jdk-alpine

# metadata

# working directory
WORKDIR /root/simple-java-docker

# Copy source code into the container
COPY src/Main.java /usr/share/nginx/html

# Compile the Java code
RUN javac Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]
