[![](https://images.microbadger.com/badges/image/ununseptium/dokuwiki-docker.svg)](https://microbadger.com/images/ununseptium/dokuwiki-docker "Get your own image badge on microbadger.com")

# dokuwiki-docker
simple to use and highly versatile Open Source wiki ... containerized

> This Dockerfile contains a thinner and more modern approach to run a dockerized version of dokuwiki. 
> It's based on the php:7.1-apache image which ships with apache and php7 right out of the box.

## how to run

Instead of just starting a container right from the dockerfile use the docker-compose feature with a `docker-compose.yml` file like this instead.

```
version: '2'
services:
  dokuwiki:
    image: 'ununseptium/dokuwiki-docker'
    ports:
      - '80:80'
      - '443:443'
      - '22:22'
    volumes:
      - 'data':/var/www/html'
volumes:
  data:
    driver: local

```
