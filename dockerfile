# Use the official Nginx image as the base
FROM nginx:alpine

# Copy custom Nginx configuration (optional, for custom settings)
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static website files to the Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
