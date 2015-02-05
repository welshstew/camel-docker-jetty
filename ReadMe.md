Camel Router WAR Project - with a little bit of Docker
========================

This project includes a sample route as as a WAR.  And some extra docker stuff.
You can build the WAR by running

    mvn install

You can then run the project by dropping the WAR into your 
favorite web container or just run

    mvn jetty:run

to start up and deploy to Jetty.

For more help see the Apache Camel documentation

    http://camel.apache.org/


Docker Stuff
------------

You'll need to get the [docker-maven-plugin source](https://github.com/alexec/docker-maven-plugin) and the [docker-maven-java-orch source](https://github.com/alexec/docker-java-orchestration) and perform a mvn:install

Please be aware that there are [other docker plugins](https://github.com/rhuss/docker-maven-plugin) which may be better / requires further investigation

The image is built from the public java image -  [dockerfile/java:latest](https://registry.hub.docker.com/u/dockerfile/java/)

[Docker Cheat Sheet](https://github.com/wsargent/docker-cheat-sheet)

To Run your docker image:
-------------------------

    docker:package

    // at this point you'll need to ensure the build can contact your boot2docker daemon, ensure your env vars etc are setup

    // see the images (including the one you've just built)

    docker images

    //run your image

    docker run -d -p 8080:8080 -i -t [imageId]

Your application should then be running and you can see hawtio running @ http://${boot2dockerip}/hawtio


