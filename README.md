# TomcatSample
Sample application in a docker container

To Run the conatinerized application, first build the image out of provided Dockerfile using :

_> docker build -t test2 --file Dockerfile2 .
_> docker run -it -d -p 8085:8080 -p 443:8443 test2
