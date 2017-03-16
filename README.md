# gluster-docker
Simple Gluster cluster example running in docker

This is meant to be an example of how to set up a gluster cluster using docker-compose, and connect all nodes. This works by using the [gluster/gluster-centos](https://github.com/gluster/gluster-containers) docker image, running in privileged mode on a custom network in docker. Gluster peers are connected after startup manually using docker exec, however this could be moved to a post-startup script.
