export DOCKER_IP="cockpit.cloud.topcoder.com"

export DB_CONNECTION="jdbc:informix-sqli://$DOCKER_IP:2021/tcs_catalog:INFORMIXSERVER=informixoltp_tcp;IFX_LOCK_MODE_WAIT=5;OPTCOMPIND=0;STMT_CACHE=1;"
export DB_USER=informix
export DB_PASSWORD=1nf0rm1x
export ENABLE_DEBUG=YES
export ES_ENV=DEV
export ES_HOST_PORT=$DOCKER_IP:9200
export AWS_HOST=
export AWS_REGION=
export AWS_ACCESS_KEY=
export AWS_ACCESS_SECRET=
