FROM nginx:latest

COPY content /usr/share/nginx/html

COPY conf /etc/nginx
