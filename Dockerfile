#It's worth noting that we are using a base image that has been created specifically to handle
#Python 3.X applications and a set of instructions that will run automatically before the rest of your Dockerfile.
#This base image will copy your project to /usr/src/app, copy your requirements.txt and execute pip install against it.
#With these tasks taken care of for you, your Dockerfile can then prepare to actually run your application.
#Note that at this point the PWD is /usr/src/app

FROM python:3.6.4-onbuild

ENV PROJECT_ROOT /usr/src/app

COPY start.sh /start.sh

# EXPOSE port 8000 to allow communication to/from server
EXPOSE 8000

# CMD specifcies the command to execute to start the server running.
CMD ["/start.sh", "-docker"]
# done!