# Create container
docker-compose -f "dev.yml" up -d
# get into container
docker exec -it 'id' /bin/bash
# loggin by shell (inside container, OS: alpine)
bash# psql -U postgres
# create new user
psql# CREATE USER admin WITH PASSWORD '1q2w3e4r';
psql# CREATE DATABASE testdb;
psql# GRANT ALL PRIVILEGES ON DATABASE testdb to admin;
psql# \q
# log in wirh new user (locally: inside container)
bash# psql -U admin -d testdb
# log in wirh new user (remote: outside container)
psql -U admin -d testdb -h 172.19.0.2
