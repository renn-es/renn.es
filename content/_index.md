---
---

# Renn.es

> "The tyrants are only great because we are on our knees." 
>
> <cite>Étienne de La Boétie</cite>

<!-- ![](/penguin_in_space.png) -->

*Renn.es* is a non-profit stared GNU/Linux system.

Everything is set up focused on security, simplicity and minimalism.

We provide both services which can be accessed from a web browser, and Linux shell accounts which you can SSH into.

Here are some use cases for a shell account:
- messing around and learning about Linux
- hosting a website, by `rsync`ing static, probably automatically generated content from your computer
- storing (a reasonable amount of) files

If you want an account on this server, just send us an email at <admin@renn.es>.

## Public services

Non-exhaustive list of public services:

- [renn.es](https://renn.es): this website.
- [tarneo.fr](https://tarneo.fr): *~tarneo*'s blog.
- [matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es): our Matrix server.
- [git.renn.es](https://git.renn.es): our Git server.
- [mail.renn.es](https://mail.renn.es): our email server.
- [toot.renn.es](https://toot.renn.es): our Mastodon server.
- [searx.renn.es](https://searx.renn.es): our SearXNG instance.
- [iv.renn.es](https://iv.renn.es): our Invidious instance.


## Hardware

- Host: Fujitsu Primergy TX1330 M2 GS01
- CPU: Intel Xeon E3-1270 v5 (8) @ 4GHz
- RAM: 32GB DDR3
- Hard drives: two 3TB HDDs in RAID 1

## Software

- Debian Linux
- Docker
- dockerized services:
    - reverse proxy and website hosting: [Caddy](https://caddyserver.com/). It handles both reverse proxying requests and issuing TLS certs. Its configuration file is very simple to work with.
    - email server: [Docker-mailserver](https://docker-mailserver.github.io/docker-mailserver/latest/). This does all we want it to do and much more.
    - Matrix server: [Synapse](https://hub.docker.com/r/matrixdotorg/synapse)
    - git server: [Gitea](https://about.gitea.com/)
- file sync:
    - [Unison](https://github.com/bcpierce00/unison) with a [custom script](https://github.com/tarneaux/.f/blob/master/zsh/.config/scripts/unison-sync)
    - [Syncthing](https://syncthing.net/) on smartphones. Peer-to-peer is overkill for us, but it's the only libre software we know of for mirrored sync that also works on android.
- backups:
    - [btrbk](https://github.com/digint/btrbk) is great for maintaining *local* snapshots. We have set up a cron job for it to run every ten minutes and it keeps those snapshots for a long time, and as of writing this we have over 2000 stored.
    - We also regularly backup directories we can't afford to lose onto cold storage with [rsync](https://rsync.samba.org/).

## Analytics

Some of the websites we host use very minimal analytics, with the only goal of knowing how many people access said websites.
For this, we use the very basic Caddy `log` option, which logs each HTTP request to a file. Each log entry contains the following personnaly identifiable information:
- timestamp (the date & time of the request)
- client IP address (unique, for example, to your home network)
- host (e.g. `tarneo.fr`) and page
- user agent (which web browser you are using)

This data isn't shared with third parties.

**We do not use any kind of third-party service on our websites.**

## Who are we?

We are *~tarneo* and *~spedotte*, french, privacy red-pilled GNU/Linux enthusiasts. This server is maintained without any profit in mind and is therefore more of a money sink.

[The FBI has not been here.](https://en.wikipedia.org/wiki/Warrant_canary)

[Cette page en français](/fr/)
