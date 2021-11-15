# create and start containers (-d “detached” mode)
$ docker-compose -f "file.yml" up -d

# Build or rebuild services
$ docker-compose -f "file.yml" build

# Stop and delete containers
$ docker-compose -f "file.yml" down

# Delete all volumes
$ docker volume rm $(docker volume ls -q)