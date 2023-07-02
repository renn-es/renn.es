---
---

# Renn.es

> "The tyrants are only great because we are on our knees." 
>
> <cite>Étienne de La Boétie</cite>

<!-- ![](/penguin_in_space.png) -->

*Renn.es* is a non-profit [tilde community](https://tildeverse.org/) running on Gentoo Linux. Everything is set up focused on security, simplicity and minimalism. We use it for our daily computing tasks like programming, writing mails, maintaining a website, syncing files, etc.

We like doing things the "old school" way: here you won't see a Nextcloud instance or the like. We prefer writing plain text files and syncing them with tools that comply to the UNIX philosophy: do one thing and do it well.

If you want an account on this server, just send us an email at <admin@renn.es>.

## Public services

Non-exhaustive list of public services:

- [renn.es](https://renn.es): this website.
- [tarneo.fr](https://tarneo.fr): a personal blog.
- [matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es): our matrix server.
- [git.renn.es](https://git.renn.es): our git server.
- [mail.renn.es](https://mail.renn.es): our email server, without webmail.


## Hardware

- Host: Fujitsu Primergy TX1330 M2 GS01
- CPU: Intel Xeon E3-1270 v5 (8) @ 4GHz
- RAM: 32GB DDR3
- Hard drives: two 3TB HDDs in RAID 1

## Software

- Gentoo Linux
- Docker
- dockerized services:
    - reverse proxy and website hosting: [Caddy](https://caddyserver.com/). It handles both reverse proxying requests and issuing TLS certs. Its configuration file is very simple to work with.
    - email server: [Docker-mailserver](https://docker-mailserver.github.io/docker-mailserver/latest/). This does all we want it to do and much more.
    - Matrix server: [Synapse](https://hub.docker.com/r/matrixdotorg/synapse)
    - git server: [Legit](https://github.com/icyphox/legit) can handle both web pages and https clones.
- file sync:
    - [Unison](https://github.com/bcpierce00/unison) with a [custom script](https://github.com/tarneaux/.f/blob/master/zsh/.config/scripts/unison-sync)
    - [Syncthing](https://syncthing.net/) on smartphones. Peer-to-peer is overkill for us, but it's the only libre software we know of for mirrored sync that also works on android.
- backups:
    - [btrbk](https://github.com/digint/btrbk) is great for maintaining *local* snapshots. We have set up a cron job for it to run every ten minutes and it keeps those snapshots for a long time, and as of writing this we have over 2000 stored.
    - We also regularly backup directories we can't afford to lose onto cold storage with [rsync](https://rsync.samba.org/).

## Who are we?

We are french, privacy red-pilled GNU/Linux enthusiasts. This server is maintained without any profit in mind and is therefore more of a money sink.


[Cette page en français](/fr/)
