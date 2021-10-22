[![](https://images.microbadger.com/badges/image/ununseptium/dokuwiki-docker.svg)](https://microbadger.com/images/ununseptium/dokuwiki-docker "Get your own image badge on microbadger.com")

# dokuwiki-docker
Simple to use and highly versatile open-source wiki... conveniently packaged as a container image

> This Dockerfile contains a streamlined and not blown-up approach to run a dockerized version of dokuwiki. 
> It's based on the php:7.x-apache image which ships with apache and php7 right out of the box.

## How-to use this

Instead of just starting the image, you should consider using a docker-compose file to spin up your services. The example file will attach a persistent volume to your dokuwiki service and make sure the needed ports are openened.

```
# Example docker-compose file
version: '3'
services:
  dokuwiki:
    image: 'ununseptium/dokuwiki-docker'
    ports:
      - '80:80'
      - '443:443'
    volumes:
      - 'data:/var/www/html'
volumes:
  data:
    driver: local

```

Once you either navigated to the cloned repo or created the file by yourself, you can use these commands:

**Start the Service via**

`docker-compose up`

**Tear down the Service via**

`docker-compose down`
