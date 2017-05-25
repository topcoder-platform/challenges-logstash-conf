FROM appiriodevops/tc-logstash:1.0.2
MAINTAINER Devops <devops@topcoder.com>

# install Logstash output plugin to sign and export logstash events to Amazon Elasticsearch Service 
# https://github.com/awslabs/logstash-output-amazon_es
RUN logstash-plugin install logstash-output-amazon_es

COPY conf /conf

ADD run.sh /run.sh

RUN chmod +x /run.sh

CMD ./run.sh
