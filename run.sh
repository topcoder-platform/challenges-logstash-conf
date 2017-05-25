#!/bin/bash

j2 /conf/$CONF_FILENAME-conf.j2 > $CONF_FILENAME.conf && cat $CONF_FILENAME.conf && logstash -f $CONF_FILENAME.conf >> /var/log/$CONF_FILENAME.log && tail -f /dev/null
