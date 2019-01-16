# 3Tier
##### Two tier django app
This will deploy 2 containers.
1. app (django+gunicorn)
This is your django web server powered by gunicorn.
2. db (postgres)
This is your postgres database for the django web server
3. nginx
nginx web server which serves static files

`docker-compose up -d` (bring up our app) or  
`docker-compose up --build -d` (rebuild containers and bring up our app)  
will bring up our django app.  

# Update database (django migrations)
`docker-compose exec djangoapp python /djangoapp/manage.py makemigrations` and  
`docker-compose exec djangoapp python /djangoapp/manage.py migrate` will  
do the migrations. After this we can create our admin user.  
`docker-compose exec djangoapp python /djangoapp/manage.py createsuperuser`
Now we can log into our admin panel  
`<django app homepage>/admin`

# Images
Django+Gunicorn - 3.7-alpine3.7 (official)  
Postgres - postgres:11-alpine (official)  
Nginx - nginx:1.15.0-alpine (official)  

# Highlights
 - Alpine images which are as small as 5mb for smaller footprint.  
 - Persistent database and media storage.  
 - Persistent shared volume with static files for Django and Nginx.  
 - Bringing up the entire Setup takes around 3 seconds.  
 - Building up (docker-compose up -d --build) takes only few seconds  

# Test
 - Go to https://labs.play-with-docker.com/ (I hope it is still there)
 - clone this repository
 - cd into django_gunicorn_db_nginx where the compose file is located.  
 - docker-compose up -d --build
