# 3Tier
##### Two tier django app
This will deploy 2 containers.
1. App ()
This is your django web server powered by gunicorn.
2. db
This is your postgres database for the django web server
3. Web
This is your web server which serves static files.

`docker-compose up -d` (bring up our app) or  
`docker-compose up --build -d` (rebuild containers and bring up our app)  
will bring up our django app.  

# Update database (django migrations)
`docker-compose exec web python /code/hello_django/manage.py makemigrations` and  
`docker-compose exec web python /code/hello_django/manage.py migrate` will  
do the migrations. After this we can create our admin user.  
`docker-compose exec web python /code/hello_django/manage.py createsuperuser`
Now we can log into our admin panel
`<django app homepage>/admin`
You can now access the pgadmin, add the postgresql server and view the data.
