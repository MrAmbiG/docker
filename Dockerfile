# Pull base image
FROM python:3.7-slim

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code
RUN pip install pipenv
ADD code /code
RUN pipenv install #--system --skip-lock
CMD ["pipenv", "run", "python", "/code/hello_django/manage.py", "runserver", "0.0.0.0:8001"]
