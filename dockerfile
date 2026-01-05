# Use an official Ubuntu base image
FROM ubuntu:20.04

# Prevent interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Update and install nginx
RUN apt-get update && apt-get install -y nginx

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
