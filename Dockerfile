FROM nginx:1.25-alpine

# Copy website files
COPY . /usr/share/nginx/html

# Replace the default vhost so Nginx listens on Cloud Run’s port 8080
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
