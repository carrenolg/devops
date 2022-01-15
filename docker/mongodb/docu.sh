# 1. create Mongo Server
docker-compose -f "stack.yml" up -d
# 2. Connect to mongo from host
mongo "mongodb://root:example@172.20.0.3:27017/" --username root
# 3. Connect to mongo container by docker
$ docker exec -it "container-id" /bin/bash
>>mongo