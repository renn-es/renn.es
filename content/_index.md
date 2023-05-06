+++
title = "Renn.es"
template = "section.html"
icon = "/favicon.webp"
+++

# Renn.es

*Renn.es* is a non-profit and open shared computer system with a small user base running on Arch Linux. Everything is set up focused on security and simplicity/minimalism. It is operated by privacy red-pilled GNU/Linux enthusiasts, who use it for their daily computing tasks like programming, writing mails, maintaining a website, syncing files, etc. This machine is hosted in Rennes (hence the name), in France (cocorico).

We've got some spare space on this machine that we'd be happy to provide to you. For this you can contact us:

- email to: <tarneo@renn.es> or <spedotte@renn.es>.
- matrix room: [#welcome:matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es)

If you pay for an additional domain name, we could set up a fully custom email address for you (\~ \$10-\$15 with a country TLD like .fr).

## Public services

Non-exhaustive list of public services:

- [renn.es](https://renn.es), this website.
- [tarneo.fr](https://tarneo.fr), a personal blog.
- [matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es), our matrix server.


## Technical details

### Hardware

- Host: Fujitsu Primergy TX1330 M2 GS01
- CPU: Intel Xeon E3-1270 v5 (8) @ 4GHz
- RAM: 32GB DDR3
- Hard drives: two 3TB HDDs in RAID 1

### Software

- Arch Linux
- Docker
- dockerized services:
    - reverse proxy: [Traefik](https://traefik.io/traefik/)
    - website hosting: [Nginx](https://hub.docker.com/_/nginx)
    - email server: [Docker-mailserver](https://docker-mailserver.github.io/docker-mailserver/latest/)
    - Matrix server: [Synapse](https://hub.docker.com/r/matrixdotorg/synapse)
- file sync:
    - [Syncthing](https://syncthing.net/) on smartphones (unfortunately it's the only FOSS solution on Android for 2-way sync)
    - [Unison](https://github.com/bcpierce00/unison) with a [custom script](https://github.com/tarneaux/.f/blob/master/zsh/.config/scripts/unison-sync)
- backup: [btrbk](https://github.com/digint/btrbk) with a cron job that runs every minute (yes that's overkill but it costs almost nothing)

[Cette page en français](/fr/)
