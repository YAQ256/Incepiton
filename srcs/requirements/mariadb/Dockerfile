
FROM debian:latest

RUN apt update && apt upgrade && apt install -y \
	mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/.
# COPY conf/init.sql /etc/mysql/init.sql
COPY tools/script.sh .
# COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/.
# COPY conf/init.sql /etc/mysql/init.sql
# COPY conf/script.sh .

RUN mkdir /run/mysqld
RUN chmod +x script.sh

EXPOSE 3306

CMD ["./script.sh"]
# CMD ["./conf/script.sh"]
