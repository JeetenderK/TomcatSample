# TomcatSample
Sample application in a docker container

To Run the conatinerized application, first clone this repo in your local and build the image out of provided Dockerfile using :  <br />

_> docker build -t test2 --file Dockerfile .  <br />

<br />
<br />

Then Run Docker-compose to build container out of the image :

_> docker-compose up -d  <br />


Now you can access your application via :

http://localhost/sample and
https://localhost/sample
