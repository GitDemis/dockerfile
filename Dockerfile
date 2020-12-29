FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && echo "daemon off;" >> /etc/nginx/nginx.conf


EXPOSE 80
CMD ["nginx"]

