# Use the official Nginx image
FROM nginx:alpine

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site content to Nginx's web directory
COPY . /usr/share/nginx/html

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Override default command to run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
