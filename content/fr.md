---
---

# Renn.es

*Renn.es* est un serveur partagé sans but lucratif dans le style des [communautés tilde](https://tildeverse.org) qui tourne sous Fedora. Ses administrateurs se concentrent principalement sur la sécurité et la simplicité/le minimalisme. Il est géré par des passionnés de GNU/Linux, qui prônent la confidentialité et l'utilisent pour leurs tâches informatiques quotidiennes telles que la programmation, l'échange d'e-mails, l'hébergement de sites web, la synchronisation de fichiers, etc. Ce serveur se trouve à Rennes.

Si vous voulez une petite place sur ce serveur, contactez-nous par e-mail à l'adresse <admin@renn.es>.

## Services

Liste non exhaustive des services disponibles sur Renn.es:

- [renn.es](https://renn.es), ce site Web.
- [tarneo.fr](https://tarneo.fr), un blog personnel.
- [matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es), notre serveur Matrix.
- [git.renn.es](https://git.renn.es), notre serveur Git.
- un serveur de mail sans webmail.

## Informations techniques

### Matériel

- Machine: Fujitsu Primergy TX1330 M2 GS01
- CPU: Intel Xeon E3-1270 v5 (8) @ 4GHz
- RAM: 32GB DDR3
- Disques durs: 2x 3TB en RAID 1

### Software

- Fedora 38
- Docker
- services docker:
    - reverse proxy et hébergement de sites web: [Caddy](https://caddyserver.com/). Il gère aussi la génération automatique de certificats TLS avec un fichier de configuration admirablement simple.
    - serveur mail: [Docker-mailserver](https://docker-mailserver.github.io/docker-mailserver/latest/)
    - serveur Matrix: [Synapse](https://hub.docker.com/r/matrixdotorg/synapse)
    - serveur Git: [Legit](https://github.com/icyphox/legit)
- synchronisation de fichiers:
    - [Syncthing](https://syncthing.net/) sur smartphone (malheureusement c'est la seule solution libre disponible sur Android pour une synchronisation symétrique)
    - [Unison](https://github.com/bcpierce00/unison) avec un [script](https://github.com/tarneaux/.f/blob/master/zsh/.config/scripts/unison-sync)
- backups: [btrbk](https://github.com/digint/btrbk) vers un autre serveur à Paris. On fait aussi des backups sur des disques durs externes de temps en temps.

[This page in english](/)
