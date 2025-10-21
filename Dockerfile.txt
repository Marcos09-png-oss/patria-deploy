# Imagen base oficial de Tomcat
FROM tomcat:9.0-jdk11-openjdk

# Eliminar apps por defecto (opcional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar tu WAR a la carpeta webapps del Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponer el puerto que Render usará
EXPOSE 8080

# Ejecutar Tomcat
CMD ["catalina.sh", "run"]
