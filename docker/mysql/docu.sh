# 1. Create container (mysql Server 8.0.27)
$ docker-compose -f "dev.yml" up -d
# 2. Get into container
$ docker exec -it container-id /bin/bash
# 3. login root/password (inside container)
$ mysql -u root -p
# 4. Connect from host to Mysql container (Don't use localhost)
$ mysql -h 172.17.0.3 -u root -p
# 5. Connect from host (using dbeaver)
User: root
Pass: 1q2w3e4r
Server: 172.17.0.3
Db: mysql
# 6. Check config /etc/mysql/my.cnf (inside container)
nano /etc/mysql/my.cnf
