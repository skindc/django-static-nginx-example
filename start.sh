#!/bin/bash
#
#see https://semaphoreci.com/community/tutorials/dockerizing-a-python-django-web-application
#but also the inclusion of cd to project name in start.sh as mentioned by rock in comments is important
#This also means that you run the start script from root of project not inside app
#ie [projectroot]/bin/bash start.sh not [approot]../start.sh

# Start Gunicorn processes
# workers which are the number of threads that will handle the requests coming into your application
# Gunicorn recommends this value to be set at (2 x $num_cores) + 1.
# You can read more on configuration of Gunicorn in their documentation.
# 
echo Starting Gunicorn.
# Difference from article
# CD to project as per comment above
cd helloworld
exec gunicorn helloworld.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3