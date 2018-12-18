FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DE L'APPLICATION
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
locales \
firefox-esr \
firefox-esr-l10n-fr \
desktop-file-utils \
adwaita-icon-theme \
ttf-dejavu \
ffmpeg \
ca-certificates \
gnupg \
apt-transport-https \
x11-xserver-utils \
dirmngr \
gnupg-l10n \
alsa-utils \
libasound2 \
libasound2-plugins \
pulseaudio \
pulseaudio-utils \
libcanberra-gtk-module \
libcanberra-gtk3-module \
libgl1-mesa-dri \
libgl1-mesa-glx \
mesa-utils

# SELECTION LANGUE FRANCAISE
ENV LANG fr_FR.UTF-8
RUN echo fr_FR.UTF-8 UTF-8 > /etc/locale.gen && locale-gen

# AJOUT UTILISATEUR
RUN useradd -d /home/firefox -m firefox && \
passwd -d firefox && \
adduser firefox sudo

# SELECTION UTILISATEUR
USER firefox

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD firefox
