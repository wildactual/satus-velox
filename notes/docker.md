**show running docker containers**
`docker ps`

**show docker images**
`docker images`

**interactive command in a container**
`docker exec -it {container name} ls -l /path`

**interactive docker command line**
`docker exec -it {container name} /bin/sh`

**docker copy in/out of container**
`docker cp [options] [source] [destination]`

**remove all containers running or not**
`docker rm -f $(docker ps -aq)`
 
**remove dangling objects**
`docker system prune`
  
**purge images not in use in containers**
`docker image prune -a`