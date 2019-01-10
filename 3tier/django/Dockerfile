# Pull base image
FROM python:3.7-alpine3.7

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /djangoapp
RUN apk update
RUN apk add --virtual build-deps gcc python-dev musl-dev tree

# copy code
ADD djangoapp /djangoapp
COPY Pipfile Pipfile.lock

# install our dependencies
RUN ls -altr
