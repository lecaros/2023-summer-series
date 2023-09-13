# Use the official Ubuntu base image
FROM ubuntu:latest

# Install necessary dependencies
RUN apt-get update -y && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker GPG key
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Add Docker repository
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package repository again
RUN apt-get update -y

# Install Docker
RUN apt-get install -y docker-ce

# Clean up
RUN apt-get clean

# Clone the repo
CMD ["git", "clone", "https://github.com/lecaros/2023-summer-series.git"]