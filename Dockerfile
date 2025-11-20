# Tomcat 10 con JDK 21
FROM tomcat:10.1-jdk21-openjdk

# Borrar apps por defecto
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar tu WAR ya recompilado con JDK 21
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Puerto que usa Render
EXPOSE 8080

CMD ["catalina.sh", "run"]
