# create image from a simple Dockerfile
docker build -t my-python-api .
docker run -it --rm --network mongodb_default --name my-running-app -p 8080:8080 my-python-api

# get into container (-it interactive and terminal)
$ docker exec -it 3239ecaf53ad /bin/bash

# create resources
$ docker volume create "name"

# remove all containers
$ docker rm -f $(docker ps -a -q)
