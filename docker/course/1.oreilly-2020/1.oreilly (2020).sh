# Docker, Dockerfile, and Docker-Compose (2020 Ready!) - oreilly

# working with volumes
# -v /path/host:/path/container
$ docker run --rm -v $HOME/Documents:/myvol ubuntu /bin/bash -c "ls -lha > /myvol/myfile.txt"

# Running a container only for compress a file
$ docker run --rm -v $PWD:/files klutchell/rar a /files/myrar.rar /files/myfile.txt

# Using working Directory
# a myrar.rar (create a new rar)
# -w (working directory)
$ docker run --rm -v $PWD:/files -w /files klutchell/rar a myrar.rar myfile.txt

# run apache container and get into it
$ docker run -d httpd
$ docker exec -it 63 /bin/bash

# check logs
$ docker logs 63 -f

# docker port binding
$ docker run -d -p 8080:80 httpd

# working with DockerFiles
# -t (add tag to image)
$ docker build -t myphpapp .

# upload image to docker hub
# login from cli
# mycurl (local image)
# user/image_name:tag
$ docker tag mycurl carrenolg/mycurl:latest
$ docker push

# working with docker compose
$ docker-compose up
# --build, rebuilding images
$ docker-compose up --build
# show containers
$ docker-compose push
# remove containers
$ docker-compose down
# run container
$ docker-compose run --rm "id/name"