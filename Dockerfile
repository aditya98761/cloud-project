# Use the official Nginx image
FROM nginx:stable-alpine

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy all static site files to nginx's web root
COPY . /usr/share/nginx/html
