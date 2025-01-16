# Use the official NGINX image as a base
FROM nginx:alpine

# Copy source files to the NGINX web root
COPY index.html /usr/share/nginx/html/index.html
COPY cheeky-fox-with-slingshot.png /usr/share/nginx/html/cheeky-fox-with-slingshot.png

# Expose port 80 for the web server
EXPOSE 80

# Use the default NGINX command to run the server
CMD ["nginx", "-g", "daemon off;"]