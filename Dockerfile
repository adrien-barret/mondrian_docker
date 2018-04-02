FROM tomcat:9.0-slim

MAINTAINER Adrien Barret <adrienbarret@icloud.com>

WORKDIR webapps

# install needed tools
RUN \
    apt-get update && apt-get install -y -q unzip 

ADD mondrian4.7.0.0-12.zip .

RUN \
    unzip -a mondrian4.7.0.0-12.zip && \
    rm -f mondrian4.7.0.0-12.zip 

ADD config/mondrian.properties /usr/local/tomcat/webapps/mondrian/mondrian.properties

HEALTHCHECK --interval=5s \
            --timeout=5s \
            --retries=3 \
            CMD curl -fs http://localhost:8080/mondrian || exit 1
