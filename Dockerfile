FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war http://54.95.51.110:8081/repository/student-snapshot/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20230605.063349-10.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
