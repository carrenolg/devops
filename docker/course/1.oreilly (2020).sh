# Docker, Dockerfile, and Docker-Compose (2020 Ready!) - oreilly

# working with volumes
# -v /path/host:/path/container
$ docker run --rm -v $HOME/Documents:/myvol ubuntu /bin/bash -c "ls -lha > /myvol/myfile.txt"

# Running a container only for compress a file
$ docker run --rm -v $HOME/Documents:/files klutchell/rar a /files/myrar.rar /files/myfile.txt

# Using working Directory
# a myrar.rar (create a new rar)
$ docker run --rm -v $HOME/Documents:/files -w /files klutchell/rar a myrar.rar myfile.txt
