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
WORKDIR /hello/hello_django
RUN pip install -r requirements.txt

# expose port 80 of the container
EXPOSE 80

# start django server
WORKDIR /hello/hello_django/hello_django
RUN python manage.py runserver
RUN curl http://127.0.0.1:8000
