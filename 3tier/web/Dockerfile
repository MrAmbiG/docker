# Pull base image
FROM python:3.7-alpine3.7

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
RUN apk update && \
    apk add --virtual build-deps gcc python-dev musl-dev && \
    apk add postgresql-dev tree
WORKDIR /code
# copy code
ADD code /code
RUN tree
RUN pip install -r /code/requirements.txt
CMD python manage.py makemigrations; python manage.py migrate; gunicorn /code/hello_django/hello_django.wsgi -b 0.0.0.0:8001
