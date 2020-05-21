FROM docker.io/websphere-liberty:javaee8
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
USER 0
RUN mkdir -p /my-special-folder/
COPY Dockerfile /my-special-folder/
