---
---

# Renn.es

> "Les tyrans ne sont grands que parce que nous sommes à genoux."
>
> <cite>Étienne de La Boétie</cite>

<!-- ![](/penguin_in_space.png) -->

*Renn.es* est une [communauté tilde](https://tildeverse.org) qui tourne sous Gentoo Linux. Tout est mis en place en se concentrant sur la sécurité, la simplicité et le minimalisme. Nous l'utilisons pour nos tâches informatiques quotidiennes comme la programmation, l'écriture de mails, la maintenance d'un site web, la synchronisation de fichiers, etc.

Ici, on aime faire les choses à l'ancienne: pas d'instance de services comme Nextcloud, on préfère écrire des fichiers texte et les synchroniser avec des outils UNIX.

Si vous voulez une petite place sur ce serveur, écrivez-nous un mail à l'adresse <admin@renn.es>.

## Services

Liste non exhaustive des services disponibles sur Renn.es:

- [renn.es](https://renn.es): ce site web.
- [tarneo.fr](https://tarneo.fr): le blog de *~tarneo*.
- [matrix.renn.es](https://matrix.to/#/#welcome:matrix.renn.es): notre serveur Matrix.
- [git.renn.es](https://git.renn.es): notre serveur Git.
- [mail.renn.es](https://mail.renn.es): notre serveur mail sans webmail.
- [toot.renn.es](https://toot.renn.es): notre serveur Mastodon.
- [searx.renn.es](https://searx.renn.es): notre instance SearXNG.
- [iv.renn.es](https://iv.renn.es): notre instance Invidious.

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
    - serveur Git: [Legit](https://github.com/icyphox/legit) qui s'occupe aussi bien du site web et des clonages.
- synchronisation de fichiers:
    - [Unison](https://github.com/bcpierce00/unison) avec un [script](https://github.com/tarneaux/.f/blob/master/zsh/.config/scripts/unison-sync)
    - [Syncthing](https://syncthing.net/) sur smartphone. On n'a pas besoin de peer-to-peer avec un serveur, mais c'est plutôt le fait que ça soit la seule solution libre pour une synchronisation bidirectionnelle sur Android qui nous pousse à l'utiliser.
- backups:
    - [btrbk](https://github.com/digint/btrbk) est très bien pour des snapshots *locales*. On a mis en place un cronjob pour qu'il tourne toutes les dix minutes. Il garde les snapshots longtemps, et au moment d'écrire cette page on en a plus de 2000.
    - On fait aussi des sauvegardes régulières des données importantes vers des disques durs externes avec [rsync](https://rsync.samba.org/).

## Qui sommes-nous?

Nous sommes des français passionnés de GNU/Linux et conscients des risques avec les GAFAM. Ce serveur est maintenu sans but lucratif et est plutôt un gouffre financier.

[This page in english](/)

