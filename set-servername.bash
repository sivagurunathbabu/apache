#!/bin/bash

# Set ServerName directive in Apache configuration
echo "ServerName \$HOSTNAME" >> /etc/apache2/apache2.conf

# Start Apache in the foreground
apache2-foreground
