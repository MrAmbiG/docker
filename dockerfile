# The syntax below FROM imagename:imageversion
FROM python:3.7-alpine3.7

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /hello

# Set the working directory to /hello
WORKDIR /hello
ADD "hello_django" /hello/
RUN ls -altr /hello
