docker ps -a
docker start my_container
docker stop my_container
docker rm my_container
docker system prune -a # clean cache of docker
docker network ls
docker images -a
docker logs <container-id>
docker stats <container_id>
docker cp <container_id>:/path/to/useful/file /local-path
docker exec -it <container_id> /bin/bash
#rudye@iadb.org
#Argentina.2024


# mysql https://hub.docker.com/_/mysql
# user:root
docker pull mysql
docker run --name mysql-db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=admin123 -d mysql
docker run -it --network 0091d3842424 --rm mysql mysql -hlocalhost -uroot -padmin123

#postgres https://hub.docker.com/_/postgres
#user:postgres | db:postgres
docker pull postgres
docker run --name postgres-db -p 5432:5432 -e POSTGRES_PASSWORD=admin123 -d postgres
docker run -it --rm --network some-network postgres psql -h some-postgres -U postgres

#oracle https://container-registry.oracle.com/
#user:sys | role:sysdba | db:xe
docker login container-registry.oracle.com
docker pull container-registry.oracle.com/database/express:latest
docker run --name oracle-db \
-p 1521:1521 -p 5500:5500 \
-e ORACLE_PWD=admin123 \
-v /opt/oracle/oradata \
-d container-registry.oracle.com/database/express:21.3.0-xe

#sql-server-windows  https://mcr.microsoft.com/en-us/artifact/mar/mssql/server/tags
#user:sa | db:master
docker pull mcr.microsoft.com/mssql/server:2022-latest
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Admin123" \
-p 1433:1433  --name sqlserver-db --hostname sqlserver \
-d mcr.microsoft.com/mssql/server:2022-latest

#sql-server-mac https://hub.docker.com/r/microsoft/azure-sql-edge
#user:sa | db:master
docker pull mcr.microsoft.com/azure-sql-edge
docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=Admin123' -e 'MSSQL_PID=Developer' \
-e 'MSSQL_USER=SA' -p 1433:1433 --name azuresqledge-db -d mcr.microsoft.com/azure-sql-edge


#mongo https://hub.docker.com/_/mongo
docker pull mongo
docker run --name some-mongo -d mongo:tag
docker run -it --network some-network --rm mongo mongosh --host some-mongo test

#kafka  https://hub.docker.com/r/apache/kafka
docker pull apache/kafka
docker run -d --name broker apache/kafka:latest

git clone git@bitbucket.org:idbinvest/idbinvest-portal-maestro-integration.git