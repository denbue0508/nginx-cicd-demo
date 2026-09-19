# Use the official lightweight Nginx Alpine image
FROM nginx:1.16

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your local static website files to the Nginx server root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
