# Use devopsedu/webapp as base image  
FROM devopsedu/webapp  

# Set working directory inside the container  
WORKDIR /var/www/html  

# Copy your custom web application files  
COPY . /var/www/html/  

# Expose the required port  
EXPOSE 80  

# Define the startup command  
CMD ["apache2ctl", "-D", "FOREGROUND"]

