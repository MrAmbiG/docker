# 1Tier
##### One tier django app  
The following will build the django docker image and get you an image id
`docker build -t django-docker:0.0.1 .`
Run the docker image that has been built
`docker run -d -p 8001:8001 <image id>`
Now you can access the 'hello django' app at http://0.0.0.0:8001
