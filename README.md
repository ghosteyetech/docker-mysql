# docker-mysql
Sample docker image which create initial database

## Building docker image
```
$ docker build --tag=sql-wn-saas-dev .
```

>List docker images
```
$ docker images
```

>Run docker image
```
$ docker run --name wnportal-db -p3306:3306 -d sql-wn-saas-dev
```

>Note: If got container already exists error follow following commands
```
$ docker stop <container_id>
$ docker rm <container_name>
```

>Inspect running docker ip
```
  $ docker inspect -f '{{ .NetworkSettings.IPAddress }}' <CONTAINER ID>
```

## Log in to mysql server without using client
>Logging into the MySQL Server running virtual machine
```
$ docker exec -it wnportal-db /bin/bash
```
>Login to mysql cli
```
$ mysql -uadmin_123 -ptest.123
```

## Log in to mysql server using client
>First get running ip address using following CMD
```
$ docker inspect -f '{{ .NetworkSettings.IPAddress }}' <CONTAINER ID>
```
>Then log in using client
```
$ mysql -h172.17.0.2 -uadmin_123 -ptest.123
```
