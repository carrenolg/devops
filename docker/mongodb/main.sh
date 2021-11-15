# paying with mongo
# start mongo server
$ docker run --name mymongo -d mongo

# Connect to MongoDB from another Docker container (keep in mind network)
$ docker run -it --network netmongo --rm mongo:latest mongo --host "hostname/ip" "name"
$ docker run --rm mongo:latest /bin/sh -c "mongo --host 172.17.0.2 test"

# Connect to mongo container from host
$ docker exce -it container-id /bin/bash -c "mongo"
