#!/bin/bash

j2 /conf/$CONF_FILENAME-conf.j2 > $CONF_FILENAME.conf && cat $CONF_FILENAME.conf && logstash -w 1 -f $CONF_FILENAME.conf
