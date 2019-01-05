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
RUN pip install -r requirements.txt
