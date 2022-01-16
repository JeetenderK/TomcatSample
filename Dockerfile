FROM tomcat
RUN apt-get update && \
    apt-get install -y openssl && \
	  openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365 -subj '/CN=MyDomain.com' -nodes
RUN mv webapps webapps2 && mv webapps.dist/ webapps			
COPY sample.war /usr/local/tomcat/webapps
COPY server.xml /usr/local/tomcat/conf
COPY web.xml /usr/local/tomcat/conf
CMD ["catalina.sh", "run"]
