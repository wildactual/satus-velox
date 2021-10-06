**show running docker containers**</br>
`docker ps`

**show docker images**</br>
`docker images`

**interactive command in a container**</br>
`docker exec -it {container name} ls -l /path`

**interactive docker command line**</br>
`docker exec -it {container name} /bin/sh`

**docker copy in/out of container**</br>
`docker cp [options] [source] [destination]`

**remove all containers running or not**</br>
`docker rm -f $(docker ps -aq)`
 
**remove dangling objects**</br>
`docker system prune`
  
**purge images not in use in containers**</br>
`docker image prune -a`