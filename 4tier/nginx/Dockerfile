# Pull base image
FROM nginx:1.15.8-alpine

# remove default config and add our nginx config
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

# expose the port 8000
EXPOSE 8000
