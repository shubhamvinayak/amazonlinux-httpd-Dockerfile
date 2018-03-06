FROM amazonlinux:latest

#install
RUN yum install httpd -y

# configure
RUN echo "Jenkins Docker Build and Publish " > /var/www/html/index.html


#Restart jenkins server
RUN service httpd start

EXPOSE 80

CMD ["service httpd restart"]

ENTRYPOINT service httpd restart && /bin/bash