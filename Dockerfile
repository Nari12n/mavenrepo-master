FROM tomcat:9
# Download the .war file from Nexus using wget and save as ROOT.war
RUN  wget -O /usr/local/tomcat/webapps/ROOT.war http://admin:admin@35.77.200.216:8081/repository/student-snapshot/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20230601.042824-2.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
