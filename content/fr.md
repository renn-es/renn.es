---
---

# Renn.es

> "Les tyrans ne sont grands que parce que nous sommes à genoux." - Étienne de La Boétie

<!-- ![](/penguin_in_space.png) -->

*Renn.es* est un serveur partagé sans but lucratif dans le style des [communautés tilde](https://tildeverse.org) qui tourne sous Gentoo Linux. Ses administrateurs se concentrent principalement sur la sécurité et la simplicité/le minimalisme. Il est géré par des passionnés de GNU/Linux, qui prônent la confidentialité et l'utilisent pour leurs tâches informatiques quotidiennes telles que la programmation, l'échange d'e-mails, l'hébergement de sites web, la synchronisation de fichiers, etc. Ce serveur se trouve à Rennes.

Si vous voulez une petite place sur ce serveur, contactez-nous par e-mail à l'adresse <admin@renn.es>.

## Services

Liste non exhaustive des services disponibles sur Renn.es:

- [renn.es](https://renn.es), ce site Web.
- [tarneo.fr](https://tarneo.fr), un blog personnel.
- [matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es), notre serveur Matrix.
- [git.renn.es](https://git.renn.es), notre serveur Git.
- un serveur de mail sans webmail.

## Matériel

- Machine: Fujitsu Primergy TX1330 M2 GS01
- CPU: Intel Xeon E3-1270 v5 (8) @ 4GHz
- RAM: 32GB DDR3
- Disques durs: 2x 3TB en RAID 1

## Programmes

- Gentoo Linux
- Docker
- services docker:
    - reverse proxy et hébergement de sites web: [Caddy](https://caddyserver.com/). Il gère aussi la génération de certificats TLS et son fichier de configuration est particulièrement simple.
    - serveur mail: [Docker-mailserver](https://docker-mailserver.github.io/docker-mailserver/latest/).
    - serveur Matrix: [Synapse](https://hub.docker.com/r/matrixdotorg/synapse)
    - serveur Git: [Legit](https://github.com/icyphox/legit) qui s'occupe aussi bien du site web et des `git clone`.
- synchronisation de fichiers:
    - [Unison](https://github.com/bcpierce00/unison) avec un [script](https://github.com/tarneaux/.f/blob/master/zsh/.config/scripts/unison-sync)
    - [Syncthing](https://syncthing.net/) sur smartphone. On n'a pas besoin de peer-to-peer avec un serveur, mais c'est plutôt le fait que ça soit la seule solution libre pour une synchronisation bidirectionnelle sur Android qui nous pousse à l'utiliser.
- backups:
    - [btrbk](https://github.com/digint/btrbk) est très bien pour des snapshots *locales*. On a mis en place un cronjob pour qu'il tourne toutes les dix minutes. Il garde les snapshots longtemps, et au moment d'écrire cette page on en a plus de 2000.
    - On fait aussi des sauvegardes régulières des données importantes vers des disques durs externes avec [rsync](https://rsync.samba.org/).

[This page in english](/)
