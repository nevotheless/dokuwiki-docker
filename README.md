[![](https://images.microbadger.com/badges/image/ununseptium/dokuwiki-docker.svg)](https://microbadger.com/images/ununseptium/dokuwiki-docker "Get your own image badge on microbadger.com")

# dokuwiki-docker
simple to use and highly versatile Open Source wiki ... containerized

> This Dockerfile contains a thinner and more modern approach to run a dockerized version of dokuwiki. 
> It's based on the php:7.1-apache image which ships with apache and php7 right out of the box.

## how to run

**Example**

Example command to just run the image in background (`-d`) and bind to the port 80 of the host machine (`-p 80:80`).

_This image will also automaticaly create two volumes (for /data and /lib/plugins) inside the container which you can mount to a data container or just leave it as it is to save the data files on the host machine._

`docker run --name some-name -d -p 80:80 ununseptium/dokuwiki-docker`
