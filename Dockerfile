FROM appiriodevops/challenges-logstash-conf:base

COPY conf /conf

ADD run.sh /run.sh

RUN chmod +x /run.sh

CMD ./run.sh

