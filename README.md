# Dockerise Django, and static files with Nginx and SSL

This is the github project supporting the article [Dockerise Django, and static files with Nginx and SSL](https://blog.skindc.co.uk/dockerise-django-and-static-files-with-nginx/)

The main aim of this article is to provide an example of how to serve the _static_ files for a Django 2 web application. It will guide you through the full process from creating the Django project to a production ready Docker Compose setup using two microservice containers.

1. A Gunicorn webserver serving the Django WSGI application.
2. An Nginx image acting as a proxy to the Django container and also serving the Django static files through a shared named volume.

## Using this project

Please feel free to clone the project to see the article files in operation or to use as a base for a project of your own.

```
git clone https://github.com/skindc/django-static-nginx-example.git
```

Once clone there are two tagged stages to this project.

1. The complete Docker Compose setup but without SSL.
   ```git checkout tags/compose-with-no-ssl```

2. The project at stage one with additional SSL setup with Nginx.
   ```git checkout tags/compose-with-ssl```

## Prequisites

From some of the terms used above you have already guessed that you will need some previous knowledge on these subjects to follow this article.

* Knowledge of [Docker](https://www.docker.com/what-docker) and [Docker Compose](https://docs.docker.com/compose/) concepts.
*  [Docker](https://www.docker.com/what-docker), [Docker Compose](https://docs.docker.com/compose/) and [Docker Machine](https://docs.docker.com/machine/) installed and operational
* Knowledge of [Nginx](https://www.nginx.com/) and its use as a webserver and proxy.
* Knowledge of the [Python](https://www.python.org/) and the Pip installer.
* Knowledge of Django project.

For this article we will be using Django 2 and they state for this version the following;

> "Django 2.0 supports Python 3.4, 3.5, and 3.6. We highly recommend and only officially support the latest release of each series."

Therefore you will need a minimum of Python 3.4 installed ( I am using Python 3.6.4 at the time of this article ).

## Issues

If you have any issues with the project please feel free to post them in the issues on this github project and I will attend to when I can.




