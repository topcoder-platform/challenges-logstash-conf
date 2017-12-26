FROM appiriodevops/challenges-logstash-conf:base

# Set the timezone
RUN ln -snf /usr/share/zoneinfo/$ZONE_INFO /etc/localtime && echo $TZ > /etc/timezone

COPY conf /conf

ADD run.sh /run.sh

RUN chmod +x /run.sh

CMD ./run.sh

