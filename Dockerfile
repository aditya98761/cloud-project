FROM nginx:alpine

# Remove default site
RUN rm -rf /usr/share/nginx/html/*

# Copy static website files
COPY . /usr/share/nginx/html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

