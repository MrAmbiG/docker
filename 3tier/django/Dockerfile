# Pull base image
FROM python:3.7-alpine3.7

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /djangoapp
RUN apk update && apk add --virtual build-deps gcc python-dev musl-dev tree

# copy code
ADD djangoapp /djangoapp
COPY Pipfile Pipfile.lock

# install our dependencies
RUN pip install pipenv
RUN pipenv install --system
RUN tree

# expose the port 8000
EXPOSE 8000

# define the default command to run when starting the container
CMD ["gunicorn", "--chdir", "/djangoapp", "--bind", ":8000", "djangoapp.wsgi:application"]
