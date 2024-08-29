#!/bin/sh


# Remplacer les tokens dans la configuration
sed -i "s|{TELEGRAM_BOT_1}|$TELEGRAM_BOT_1|g" /etc/matterbridge/matterbridge.toml
sed -i "s|{TELEGRAM_BOT_2}|$TELEGRAM_BOT_2|g" /etc/matterbridge/matterbridge.toml
sed -i "s|{TELEGRAM_GROUPE1}|$TELEGRAM_GROUPE1|g" /etc/matterbridge/matterbridge.toml
sed -i "s|{TELEGRAM_GROUPE2}|$TELEGRAM_GROUPE2|g" /etc/matterbridge/matterbridge.toml
sed -i "s|{DISCORD_SERVER}|$DISCORD_SERVER|g" /etc/matterbridge/matterbridge.toml
sed -i "s|{DISCORD_TOKEN}|$DISCORD_TOKEN|g" /etc/matterbridge/matterbridge.toml
sed -i "s|{DISCORD_CHANNEL1}|$DISCORD_CHANNEL1|g" /etc/matterbridge/matterbridge.toml
sed -i "s|{DISCORD_CHANNEL2}|$DISCORD_CHANNEL2|g" /etc/matterbridge/matterbridge.toml
sed -i "s|{GATEWAY_NAME_1}|$GATEWAY_NAME_1|g" /etc/matterbridge/matterbridge.toml
sed -i "s|{GATEWAY_NAME_2}|$GATEWAY_NAME_2|g" /etc/matterbridge/matterbridge.toml

cat /etc/matterbridge/matterbridge.toml

echo "Attente de 5 secondes avant de lancer Matterbridge"
sleep 5

# Vérifier l'emplacement de l'exécutable matterbridge
which matterbridge

exec matterbridge -conf /etc/matterbridge/matterbridge.toml

## Lancer Matterbridge
#if [ -x "$(command -v matterbridge)" ]; then
#  echo "Lancement de Matterbridge"
#  exec matterbridge
#else
#  echo "Erreur : matterbridge n'est pas trouvé dans le PATH"
#  echo "Contenu du répertoire courant :"
#  ls -la
#  echo "Contenu de /bin :"
#  ls -la /bin
#  echo "Contenu de /usr/bin :"
#  ls -la /usr/bin
#  echo "Contenu de /usr/local/bin :" ls -la /usr/local/bin
#fi
