FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD test.12345
ENV MYSQL_DATABASE wnportal
ENV MYSQL_USER admin_123
ENV MYSQL_PASSWORD test.123
ADD script.sql /docker-entrypoint-initdb.d
EXPOSE 3306
