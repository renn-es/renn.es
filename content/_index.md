---
---

# Renn.es

*Renn.es* is a non-profit [tilde community](https://tildeverse.org/) running on Fedora. Everything is set up focused on security and simplicity/minimalism. It is operated by privacy red-pilled GNU/Linux enthusiasts, who use it for their daily computing tasks like programming, writing mails, maintaining a website, syncing files, etc. Our server is hosted in Rennes, France.

If you want an account on this server, just send us an email at <admin@renn.es>.

## Public services

Non-exhaustive list of public services:

- [renn.es](https://renn.es), this website.
- [tarneo.fr](https://tarneo.fr), a personal blog.
- [matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es), our matrix server.
- [git.renn.es](https://git.renn.es), our git server.
- an email server, without webmail.


## Technical details

### Hardware

- Host: Fujitsu Primergy TX1330 M2 GS01
- CPU: Intel Xeon E3-1270 v5 (8) @ 4GHz
- RAM: 32GB DDR3
- Hard drives: two 3TB HDDs in RAID 1

### Software

- Fedora 38
- Docker
- dockerized services:
    - reverse proxy and website hosting: [Caddy](https://caddyserver.com/). It's very simple because it handles TLS certificates automatically (at least in theory).
    - email server: [Docker-mailserver](https://docker-mailserver.github.io/docker-mailserver/latest/)
    - Matrix server: [Synapse](https://hub.docker.com/r/matrixdotorg/synapse)
    - git server: [Legit](https://github.com/icyphox/legit)
- file sync:
    - [Syncthing](https://syncthing.net/) on smartphones (unfortunately it's the only FOSS solution on Android for 2-way sync)
    - [Unison](https://github.com/bcpierce00/unison) with a [custom script](https://github.com/tarneaux/.f/blob/master/zsh/.config/scripts/unison-sync)
- backup: [btrbk](https://github.com/digint/btrbk) to another server located in Paris. We also do a full backup of the server semi-regularly on cold storage.

[Cette page en français](/fr/)
