# Imagen base oficial de Tomcat 10 con JDK 17
FROM tomcat:10.1-jdk17-openjdk

# Eliminar apps por defecto (opcional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar tu WAR a la carpeta webapps del Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponer el puerto que Render usará
EXPOSE 8080

# Ejecutar Tomcat
CMD ["catalina.sh", "run"]
