# Use an official Nginx image as a base image
FROM nginx:alpine

# Copy the static files (HTML and CSS) to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# Expose port 80
EXPOSE 80
