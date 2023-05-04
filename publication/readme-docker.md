# Using docker and /etc/hosts to view the published IG
 
I cread a docker image with PHP/Apache with the published
IG files that can be viewed locally.

To be able to see published IG, edit the `/etc/hosts` file and add following
line (MacOS or Linux/Unix)
```
127.0.0.1    fhir.nmdp.org
```

Now, when my browser tries to go to example.org, it gets routed to my localhost.
Remember, you'll have to comment it out before you can see the real fhir.nmdp.org site.

Then to create a docker image (see the Dockerfile), run the following
commands.

First see if a previous container is running, and stop it if it is.
```
$ docker container ls
CONTAINER ID   IMAGE         COMMAND                  CREATED       STATUS       PORTS                NAMES
fd767ed9d25c   myig:latest   "docker-php-entrypoi…"   3 hours ago   Up 3 hours   0.0.0.0:80->80/tcp   agitated_torvalds

$ docker stop agitated_torvalds
```

Now build and run the new docker image.
```
$ docker build -t myig:latest .
$ docker run -d -p 80:80 myig:latest
```

Point the browser to `http://fhir.nmdp.org/ig/cibmtr-reporting`