FROM nginx:alpine

ENV SERVER_NAME=127.0.0.1

RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx_server.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html

COPY ./html /var/www/html

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
