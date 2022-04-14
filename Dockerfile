FROM registry.redhat.io/jboss-webserver-5/webserver53-openjdk8-tomcat9-openshift-rhel7

USER root
RUN mkdir -p /home/tomcat/oim
RUN chmod -R 777 /home/tomcat/oim

# Define the user
USER 185
# Define the working directory
WORKDIR /home/jboss
# Define run cmd
CMD ["/opt/jws-5.3/tomcat/bin/launch.sh"]
