# Use official nginx image
FROM nginx:stable-alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy all website files into the nginx HTML directory
COPY . /usr/share/nginx/html

