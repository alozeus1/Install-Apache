FROM centos07

# Install Apache server
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Copy custom Apache config
COPY httpd.conf /etc/httpd/conf/httpd.conf

# Expose port 5000
EXPOSE 5000

# Start Apache server
CMD ["bash"]

