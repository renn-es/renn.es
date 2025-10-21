# Clés PGP

L'association Renn.es gère deux clés PGP qui ont des usages différents.

## Clé de chiffrement

Ceci est une clé partagée par le bureau et les administrateur·ices système pour chiffrer les communications. Si vous nous envoyez un e-mail sensible (à n'importe laquelle des addresses citées sur la page d'accueil de ce site), vous pouvez utiliser cette clé pour chiffrer votre communication.

L'empreinte de cette clé est: `DA96 099B 53AF 507D 855D  E3D4 5185 ADFE C142 138C`

## Signature pour Git

Une clé partagée par les administrateur·ices système uniquement, pour signer les commits Git.

L'empreinte de cette clé est: `1191 051C A79A 876B 49E2  B8C4 6F14 5B0C 9A5B FC47`

## Importer les clés

Les clés peuvent être obtenues de plusieurs manières différentes. Chaque méthode listée ici importe les deux clés.

- en utilisant le WKD hébergé sur ce site Web:
```sh
gpg --locate-key admin@renn.es
```
- En utilisant un serveur de clés GPG:
```sh
gpg --recv-keys 5185ADFEC142138C 6F145B0C9A5BFC47
```
- En [téléchargeant les clés](/.well-known/openpgpkey/hu/4y36rkzdjnzmk3oxaekyi5biowgr5kcz) manuellement avant de les importer:
```sh
gpg --import 4y36rkzdjnzmk3oxaekyi5biowgr5kcz
```

