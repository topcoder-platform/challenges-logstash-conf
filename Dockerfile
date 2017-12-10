FROM logstash:5

MAINTAINER Devops <devops@topcoder.com>

RUN logstash-plugin install --no-verify logstash-output-amazon_es logstash-filter-aggregate

# Install Python & j2cli
RUN apt-get update && apt-get install -y python
RUN apt-get install -y  python-pip
RUN pip install j2cli

ADD jar/jdbc /opt/logstash/vendor/

# Copying to old location to maintain backward compatibility
COPY jar/jdbc/informix.jdbc-3.0.0.JC3.jar /
COPY jar/jdbc/ifxjdbc.jar /

# Set the timezone
RUN ln -snf /usr/share/zoneinfo/$ZONE_INFO /etc/localtime && echo $TZ > /etc/timezone

COPY conf /conf

ADD run.sh /run.sh

RUN chmod +x /run.sh

CMD ./run.sh

