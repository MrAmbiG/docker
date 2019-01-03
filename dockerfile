# The syntax below FROM imagename:imageversion
FROM python:3.7-alpine3.7

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /code

# Set the working directory to /code
WORKDIR /code

# Add the contents of the code directory from host to the /code directory of
# the container. Please note that it won't add the code directory but adds the
# contents of it.

ADD code /code
RUN ls -altr /code
