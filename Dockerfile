FROM nginx:latest
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./dist/ /static
CMD apt update && apt install vim
CMD nginx -g "daemon off; error_log /dev/stdout info;"