# Just some docs about docker

Delete all containers:
`docker rm $(docker ps -a -q) 2>/dev/null || true`

Delete all volumes:
`docker volume rm $(docker volume ls -q) 2>/dev/null || true`