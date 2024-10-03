FROM debian:latest

RUN apt update && apt upgrade && apt install -y \
	nginx openssl

RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=ES/L=Madrid/CN=cyacoub-.42.fr"

COPY conf/default /etc/nginx/sites-available/.

CMD ["nginx", "-g", "daemon off;"]