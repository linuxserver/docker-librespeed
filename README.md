[![linuxserver.io](https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/linuxserver_medium.png)](https://linuxserver.io)

[![Blog](https://img.shields.io/static/v1.svg?style=flat-square&color=E68523&label=linuxserver.io&message=Blog)](https://blog.linuxserver.io "all the things you can do with our containers including How-To guides, opinions and much more!")
[![Discord](https://img.shields.io/discord/354974912613449730.svg?style=flat-square&color=E68523&label=Discord&logo=discord&logoColor=FFFFFF)](https://discord.gg/YWrKVTn "realtime support / chat with the community and the team.")
[![Discourse](https://img.shields.io/discourse/https/discourse.linuxserver.io/topics.svg?style=flat-square&color=E68523&logo=discourse&logoColor=FFFFFF)](https://discourse.linuxserver.io "post on our community forum.")
[![Fleet](https://img.shields.io/static/v1.svg?style=flat-square&color=E68523&label=linuxserver.io&message=Fleet)](https://fleet.linuxserver.io "an online web interface which displays all of our maintained images.")
[![GitHub](https://img.shields.io/static/v1.svg?style=flat-square&color=E68523&label=linuxserver.io&message=GitHub&logo=github&logoColor=FFFFFF)](https://github.com/linuxserver "view the source for all of our repositories.")
[![Open Collective](https://img.shields.io/opencollective/all/linuxserver.svg?style=flat-square&color=E68523&label=Supporters&logo=open%20collective&logoColor=FFFFFF)](https://opencollective.com/linuxserver "please consider helping us by either donating or contributing to our budget")

The [LinuxServer.io](https://linuxserver.io) team brings you another container release featuring :-

 * regular and timely application updates
 * easy user mappings (PGID, PUID)
 * custom base image with s6 overlay
 * weekly base OS updates with common layers across the entire LinuxServer.io ecosystem to minimise space usage, down time and bandwidth
 * regular security updates

Find us at:
* [Blog](https://blog.linuxserver.io) - all the things you can do with our containers including How-To guides, opinions and much more!
* [Discord](https://discord.gg/YWrKVTn) - realtime support / chat with the community and the team.
* [Discourse](https://discourse.linuxserver.io) - post on our community forum.
* [Fleet](https://fleet.linuxserver.io) - an online web interface which displays all of our maintained images.
* [GitHub](https://github.com/linuxserver) - view the source for all of our repositories.
* [Open Collective](https://opencollective.com/linuxserver) - please consider helping us by either donating or contributing to our budget

# [linuxserver/librespeed](https://github.com/linuxserver/docker-librespeed)

[![GitHub Stars](https://img.shields.io/github/stars/linuxserver/docker-librespeed.svg?style=flat-square&color=E68523&logo=github&logoColor=FFFFFF)](https://github.com/linuxserver/docker-librespeed)
[![GitHub Release](https://img.shields.io/github/release/linuxserver/docker-librespeed.svg?style=flat-square&color=E68523&logo=github&logoColor=FFFFFF)](https://github.com/linuxserver/docker-librespeed/releases)
[![GitHub Package Repository](https://img.shields.io/static/v1.svg?style=flat-square&color=E68523&label=linuxserver.io&message=GitHub%20Package&logo=github&logoColor=FFFFFF)](https://github.com/linuxserver/docker-librespeed/packages)
[![GitLab Container Registry](https://img.shields.io/static/v1.svg?style=flat-square&color=E68523&label=linuxserver.io&message=GitLab%20Registry&logo=gitlab&logoColor=FFFFFF)](https://gitlab.com/Linuxserver.io/docker-librespeed/container_registry)
[![Quay.io](https://img.shields.io/static/v1.svg?style=flat-square&color=E68523&label=linuxserver.io&message=Quay.io)](https://quay.io/repository/linuxserver.io/librespeed)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/linuxserver/librespeed.svg?style=flat-square&color=E68523)](https://microbadger.com/images/linuxserver/librespeed "Get your own version badge on microbadger.com")
[![Docker Pulls](https://img.shields.io/docker/pulls/linuxserver/librespeed.svg?style=flat-square&color=E68523&label=pulls&logo=docker&logoColor=FFFFFF)](https://hub.docker.com/r/linuxserver/librespeed)
[![Docker Stars](https://img.shields.io/docker/stars/linuxserver/librespeed.svg?style=flat-square&color=E68523&label=stars&logo=docker&logoColor=FFFFFF)](https://hub.docker.com/r/linuxserver/librespeed)
[![Build Status](https://ci.linuxserver.io/view/all/job/Docker-Pipeline-Builders/job/docker-librespeed/job/master/badge/icon?style=flat-square)](https://ci.linuxserver.io/job/Docker-Pipeline-Builders/job/docker-librespeed/job/master/)
[![](https://lsio-ci.ams3.digitaloceanspaces.com/linuxserver/librespeed/latest/badge.svg)](https://lsio-ci.ams3.digitaloceanspaces.com/linuxserver/librespeed/latest/index.html)

[Librespeed](https://github.com/librespeed/speedtest) is a very lightweight Speedtest implemented in Javascript, using XMLHttpRequest and Web Workers.
No Flash, No Java, No Websocket, No Bullshit.

[![librespeed](https://raw.githubusercontent.com/librespeed/speedtest/master/.logo/logo3.png)](https://github.com/librespeed/speedtest)

## Supported Architectures

Our images support multiple architectures such as `x86-64`, `arm64` and `armhf`. We utilise the docker manifest for multi-platform awareness. More information is available from docker [here](https://github.com/docker/distribution/blob/master/docs/spec/manifest-v2-2.md#manifest-list) and our announcement [here](https://blog.linuxserver.io/2019/02/21/the-lsio-pipeline-project/).

Simply pulling `linuxserver/librespeed` should retrieve the correct image for your arch, but you can also pull specific arch images via tags.

The architectures supported by this image are:

| Architecture | Tag |
| :----: | --- |
| x86-64 | amd64-latest |
| arm64 | arm64v8-latest |
| armhf | arm32v7-latest |


## Usage

Here are some example snippets to help you get started creating a container.

### docker

```
docker create \
  --name=librespeed \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e PASSWORD=PASSWORD \
  -e DB_TYPE=sqlite `#optional` \
  -e DB_NAME=DB_NAME `#optional` \
  -e DB_HOSTNAME=DB_HOSTNAME `#optional` \
  -e DB_USERNAME=DB_USERNAME `#optional` \
  -e DB_PASSWORD=DB_PASSWORD `#optional` \
  -p 80:80 \
  -v /path/to/appdata/config:/config \
  --restart unless-stopped \
  linuxserver/librespeed
```


### docker-compose

Compatible with docker-compose v2 schemas.

```
---
version: "2"
services:
  librespeed:
    image: linuxserver/librespeed
    container_name: librespeed
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
      - PASSWORD=PASSWORD
      - DB_TYPE=sqlite #optional
      - DB_NAME=DB_NAME #optional
      - DB_HOSTNAME=DB_HOSTNAME #optional
      - DB_USERNAME=DB_USERNAME #optional
      - DB_PASSWORD=DB_PASSWORD #optional
    volumes:
      - /path/to/appdata/config:/config
    ports:
      - 80:80
    restart: unless-stopped
```

## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `-p 80` | web gui |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Europe/London` | Specify a timezone to use EG Europe/London |
| `-e PASSWORD=PASSWORD` | Set the password for the results database. |
| `-e DB_TYPE=sqlite` | Defaults to `sqlite`, can also be set to `mysql` or `postgresql`. |
| `-e DB_NAME=DB_NAME` | Database name. Required for mysql and pgsql. |
| `-e DB_HOSTNAME=DB_HOSTNAME` | Database address. Required for mysql and pgsql. |
| `-e DB_USERNAME=DB_USERNAME` | Database username. Required for mysql and pgsql. |
| `-e DB_PASSWORD=DB_PASSWORD` | Database password. Required for mysql and pgsql. |
| `-v /config` | Contains all relevant configuration files. |

## Environment variables from files (Docker secrets)

You can set any environment variable from a file by using a special prepend `FILE__`. 

As an example:

```
-e FILE__PASSWORD=/run/secrets/mysecretpassword
```

Will set the environment variable `PASSWORD` based on the contents of the `/run/secrets/mysecretpassword` file.

## User / Group Identifiers

When using volumes (`-v` flags) permissions issues can arise between the host OS and the container, we avoid this issue by allowing you to specify the user `PUID` and group `PGID`.

Ensure any volume directories on the host are owned by the same user you specify and any permissions issues will vanish like magic.

In this instance `PUID=1000` and `PGID=1000`, to find yours use `id user` as below:

```
  $ id username
    uid=1000(dockeruser) gid=1000(dockergroup) groups=1000(dockergroup)
```


&nbsp;
## Application Setup

Access the speedtest webui at `http://<server-ip>`. The results database can be accessed at `http://<server-ip>/results/stats.php` with the password set.  
The default template used is based on `example-singleServer-full.html`. However, all templates are provided for reference at `/config/www/`. Feel free to customize `/config/www/index.html` as you like. Delete the file and restart to go back to the image default.  

You can optionally place customized `speedtest.js` and `speedtest_worker.js` files under `/config/www` and they will supersede the defaults after a container start. Keep in mind that once you do so, they will no longer be updated. You can delete them and recreate the container to go back to the image defaults.  

If you are setting up a mysql or postgresql database, you first need to import the tables into your database as described at the following link  
https://github.com/librespeed/speedtest/blob/master/doc.md#creating-the-database



## Support Info

* Shell access whilst the container is running: `docker exec -it librespeed /bin/bash`
* To monitor the logs of the container in realtime: `docker logs -f librespeed`
* container version number
  * `docker inspect -f '{{ index .Config.Labels "build_version" }}' librespeed`
* image version number
  * `docker inspect -f '{{ index .Config.Labels "build_version" }}' linuxserver/librespeed`

## Updating Info

Most of our images are static, versioned, and require an image update and container recreation to update the app inside. With some exceptions (ie. nextcloud, plex), we do not recommend or support updating apps inside the container. Please consult the [Application Setup](#application-setup) section above to see if it is recommended for the image.

Below are the instructions for updating containers:

### Via Docker Run/Create
* Update the image: `docker pull linuxserver/librespeed`
* Stop the running container: `docker stop librespeed`
* Delete the container: `docker rm librespeed`
* Recreate a new container with the same docker create parameters as instructed above (if mapped correctly to a host folder, your `/config` folder and settings will be preserved)
* Start the new container: `docker start librespeed`
* You can also remove the old dangling images: `docker image prune`

### Via Docker Compose
* Update all images: `docker-compose pull`
  * or update a single image: `docker-compose pull librespeed`
* Let compose update all containers as necessary: `docker-compose up -d`
  * or update a single container: `docker-compose up -d librespeed`
* You can also remove the old dangling images: `docker image prune`

### Via Watchtower auto-updater (especially useful if you don't remember the original parameters)
* Pull the latest image at its tag and replace it with the same env variables in one run:
  ```
  docker run --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  containrrr/watchtower \
  --run-once librespeed
  ```

**Note:** We do not endorse the use of Watchtower as a solution to automated updates of existing Docker containers. In fact we generally discourage automated updates. However, this is a useful tool for one-time manual updates of containers where you have forgotten the original parameters. In the long term, we highly recommend using Docker Compose.

* You can also remove the old dangling images: `docker image prune`

## Building locally

If you want to make local modifications to these images for development purposes or just to customize the logic:
```
git clone https://github.com/linuxserver/docker-librespeed.git
cd docker-librespeed
docker build \
  --no-cache \
  --pull \
  -t linuxserver/librespeed:latest .
```

The ARM variants can be built on x86_64 hardware using `multiarch/qemu-user-static`
```
docker run --rm --privileged multiarch/qemu-user-static:register --reset
```

Once registered you can define the dockerfile to use with `-f Dockerfile.aarch64`.

## Versions

* **06.01.20:** - Initial Release.
