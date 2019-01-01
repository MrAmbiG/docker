# The syntax below FROM imagename:imageversion
FROM python:3.7.1

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /hello

# Set the working directory to /hello
WORKDIR /hello

# clone a repository from git
RUN git clone https://github.com/MrAmbiG/hello_django.git
RUN pip install pipenv
WORKDIR /hello/django-hello
pipenv install

# start django server
RUN python manage.py runserver
