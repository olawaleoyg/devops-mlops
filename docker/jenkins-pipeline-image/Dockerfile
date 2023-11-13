# Use the Alpine Linux base image
FROM alpine:latest

# Install required packages
RUN apk update && \
    apk add --no-cache \
    bash \
    curl \
    unzip \
    python3 \
    py3-pip \
    git

# Install Terraform
ARG TERRAFORM_VERSION=1.6.3
RUN curl -O https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Install AWS CLI
RUN apk add --no-cache python3 && \
    pip3 install --upgrade pip && \
    pip3 install awscli

# Display Terraform and AWS CLI versions
RUN terraform version && aws --version

# Set the working directory
WORKDIR /app

# Entry point command
CMD ["/bin/bash"]
