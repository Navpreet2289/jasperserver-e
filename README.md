# Jaspersoft Server Enhanced (+)

## Enhancements
Added JDBC drivers for Oracle and MS SQLServer. These can be used for configuring data sources and data adapters on the jaspersoft server. 

## How to use? 

Adapted guidelines from base image: https://hub.docker.com/r/prevailhs/jaspersoft/

* Create data volume for the data

`docker create --name data quay.io/aptible/postgresql`

* Initialize postgres db

`docker run --volumes-from data -e USERNAME=user1 -e PASSPHRASE=password1 -e DATABASE=jasperserver quay.io/aptible/postgresql --initialize`

* Start postgres container

`docker run --name postgres1 --volumes-from data -d quay.io/aptible/postgresql`

* Initialize jaspersoft server

`docker run --rm --link postgres1:database -e DB_NAME=jasperserver -e DB_USERNAME=user1 -e DB_PASSWORD=password1 imae/jasperserver-e db-initialize.sh --skip-create`

* Start jaspersoft server

`docker run -d -p 8080:8080 --name=jasperserver --link postgres1:database -e DB_NAME=jasperserver -e DB_USERNAME=user1 -e DB_PASSWORD=password1 imae/jasperserver-e`


