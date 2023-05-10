---
---

# Renn.es

> "L'autonomie est la seule voie vers une véritable liberté."

*Renn.es* est serveur partagé, ouvert et sans but lucratif avec une petite base d'utilisateurs. Il fonctionne sous Arch Linux et ses administrateurs se concentrent principalement sur la sécurité et la simplicité/le minimalisme. Il est géré par des passionnés de GNU/Linux, qui prônent la confidentialité et l'utilisent pour leurs tâches informatiques quotidiennes telles que la programmation, l'échange d'e-mails, l'hébergement de sites web, la synchronisation de fichiers, etc.
Ce serveur est à Rennes.

Ce n'est pas le seul serveur de ce type, et une liste est disponible [ici](https://tildeverse.org/).

Il reste de la place sur ces machines et nous serions heureux de vous y accueillir. Vous pouvez nous contacter:

- par e-mail à : <tarneo@renn.es> ou <spedotte@renn.es>
- ou par le matrix room public: [#welcome:matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es)

Si vous payez le prix d\'un nom de domaine, on pourra mettre en place une adresse de courriel entièrement personnalisée pour vous (~ 10-15€ pour un nom de domaine en .fr).

## Services

Liste non exhaustive des services disponibles sur Renn.es:

- [renn.es](https://renn.es), ce site Web.
- [tarneo.fr](https://tarneo.fr), un blog personnel.
- [matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es), notre serveur Matrix.

## Informations techniques

### Matériel

- Machine: Fujitsu Primergy TX1330 M2 GS01
- CPU: Intel Xeon E3-1270 v5 (8) @ 4GHz
- RAM: 32GB DDR3
- Disques durs: 2x 3TB en RAID 1

### Software

- Arch Linux
- Docker
- services docker:
    - reverse proxy: [Traefik](https://traefik.io/traefik/)
    - hébergement de sites web: [Nginx](https://hub.docker.com/_/nginx) avec rsync pour la synchronisation
    - serveur mail: [Docker-mailserver](https://docker-mailserver.github.io/docker-mailserver/latest/)
    - serveur Matrix: [Synapse](https://hub.docker.com/r/matrixdotorg/synapse)
- synchronisation de fichiers:
    - [Syncthing](https://syncthing.net/) sur smartphone (malheureusement c'est la seule solution libre disponible sur Android pour une synchronisation symétrique)
    - [Unison](https://github.com/bcpierce00/unison) avec un [script](https://github.com/tarneaux/.f/blob/master/zsh/.config/scripts/unison-sync)
- backups: [btrbk](https://github.com/digint/btrbk) avec un cronjob toutes les minutes (c'est beaucoup mais ça ne coûte presque rien)

[This page in english](/)
