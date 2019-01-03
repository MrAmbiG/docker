# The syntax below FROM imagename:imageversion
FROM python:3.7-alpine3.7

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /hello

# Set the working directory to /hello
WORKDIR /hello
ADD hello_django /hello

# add git, bash and openssh
RUN apk update && apk upgrade && apk add --no-cache bash git openssh

# clone a repository from git
RUN git clone https://github.com/MrAmbiG/hello_django.git
WORKDIR /hello/hello_django
RUN pip install -r requirements.txt

# expose port 80 of the container
EXPOSE 8001

# start django server
# If you are doing just `docker build .` then you may uncomment the following.
# CMD ["python", "/hello/hello_django/hello_django/manage.py", "runserver", "0.0.0.0:8001"]
