# FIREFOX

![firefox](https://raw.githubusercontent.com/oda-alexandre/firefox/master/img/logo-firefox.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/firefox/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![firefox docker build](https://img.shields.io/docker/build/alexandreoda/firefox.svg)](https://hub.docker.com/r/alexandreoda/firefox)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [Firefox](https://www.mozilla.org/en-US/firefox/new/) en francais pour [docker](https://www.docker.com), mis à jour automatiquement dans le [docker hub](https://hub.docker.com/r/alexandreoda/firefox/) public.


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name firefox -v ${HOME}:/home/firefox -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/snd:/dev/snd -v /dev/shm:/dev/shm -v /var/run/dbus:/var/run/dbus -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native --group-add $(getent group audio | cut -d: -f3) -e DISPLAY --network host alexandreoda/firefox
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/firefox/blob/master/LICENSE)
