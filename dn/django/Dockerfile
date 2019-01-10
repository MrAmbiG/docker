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

# install our dependencies
ADD code /code
RUN pip install pipenv && pipenv install --system

# list folders and files (optional)
RUN tree

# expose the port 8000
EXPOSE 8000

# define the default command to run when starting the container
CMD ["python", "/code/hello/manage.py", "runserver", "0.0.0.0:8000"]
