# Configuration Matterbridge pour Telegram et Discord

Ce projet contient la configuration nécessaire pour exécuter Matterbridge, créant des ponts entre des groupes Telegram et des canaux Discord.

## Table des matières

1. [Prérequis](#prérequis)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Utilisation](#utilisation)
5. [Dépannage](#dépannage)
6. [Contribuer](#contribuer)
7. [Licence](#licence)

## Prérequis

- Docker
- Docker Compose
- Un bot Telegram (ou deux si vous utilisez deux groupes différents)
- Un bot Discord
- Les ID des groupes Telegram et des canaux Discord que vous souhaitez relier

## Installation

1. Clonez ce dépôt :
   ```
   git clone https://github.com/votre-nom/matterbridge-config.git
   cd matterbridge-config
   ```

2. Copiez le fichier d'environnement d'exemple :
   ```
   cp .env.exemple .env
   ```

3. Modifiez le fichier `.env` avec vos propres tokens et identifiants.

## Configuration

1. Le fichier `matterbridge.toml` contient la configuration principale de Matterbridge. Modifiez-le selon vos besoins.

2. Le fichier `docker-compose.yaml` définit le service Docker pour Matterbridge. Vous pouvez le modifier si vous avez besoin de personnaliser le déploiement.

3. Le `Dockerfile` est utilisé pour construire l'image Docker de Matterbridge. Il inclut un script de démarrage personnalisé.

## Utilisation

Pour démarrer Matterbridge :

```
docker-compose up -d
```

Pour arrêter Matterbridge :

```
docker-compose down
```

Pour voir les logs :

```
docker-compose logs -f matterbridge
```

## Dépannage

- Si vous rencontrez des problèmes de connexion, vérifiez que tous les tokens et identifiants dans le fichier `.env` sont corrects.
- Assurez-vous que les bots ont les permissions nécessaires dans leurs groupes/canaux respectifs.
- Activez le mode debug en décommentant la ligne `DEBUG=true` dans le fichier `.env` pour obtenir plus d'informations de débogage.

## Contribuer

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une issue ou à soumettre une pull request.

