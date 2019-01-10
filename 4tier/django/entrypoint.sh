#!/bin/sh
if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

python /code/hello/manage.py flush --no-input
python /code/hello/manage.py makemigrations
python /code/hello/manage.py migrate
python /code/hello/manage.py collectstatic --no-input

exec "$@"
