# Utilise l'image officielle de Matterbridge comme base
# Cette image est maintenue par le créateur de Matterbridge (42wim)
FROM 42wim/matterbridge:latest

# Copie le script de démarrage personnalisé dans le conteneur
# Ce script sera utilisé comme point d'entrée pour le conteneur
COPY start-matterbridge.sh /start-matterbridge.sh

# Rend le script de démarrage exécutable
# Cela est nécessaire pour que le conteneur puisse exécuter le script
RUN chmod +x /start-matterbridge.sh
