#!/bin/sh

HAWTIO_OPTS="-Dhawtio.authenticationEnabled=false -Dhawtio.offline=true"
exec java "$HAWTIO_OPTS" -jar ../start.jar
