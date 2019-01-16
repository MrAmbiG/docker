# Pull base image
FROM python:3.7-alpine3.7

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /djangoapp
RUN apk update && \
    apk add --virtual build-deps gcc python-dev musl-dev && \
    apk add postgresql-dev tree
WORKDIR /djangoapp

# copy code
ADD djangoapp /djangoapp
ADD requirements.txt /djangoapp/requirements.txt

# install our dependencies
RUN pip install -r /djangoapp/requirements.txt

# expose the port 8001
EXPOSE 8001

# define the default command to run when starting the container
RUN python manage.py collectstatic --no-input
CMD ["gunicorn", "--bind", ":8001", "djangoapp.wsgi:application"]
