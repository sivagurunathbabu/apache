# Use the official Apache image from Docker Hub
FROM httpd:latest

# Copy the custom index.html file to the Apache document root
COPY index.html /usr/local/apache2/htdocs/

# Optionally, you can customize other Apache configurations if needed
# COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# Expose port 80 for incoming HTTP traffic
EXPOSE 80