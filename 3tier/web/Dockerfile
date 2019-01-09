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

# install our dependencies
RUN pip install -r /code/requirements.txt

# expose the port 8000
EXPOSE 8000

# define the default command to run when starting the container
CMD ["gunicorn", "--chdir", "/code/hello_django", "--bind", ":8000", "hello_django.wsgi:application"]
