#!/bin/sh

# Ce script configure et lance Matterbridge

# Remplacer les tokens et autres variables dans le fichier de configuration
sed -i "s|{TELEGRAM_BOT_1}|$TELEGRAM_BOT_1|g" /etc/matterbridge/matterbridge.toml  # Token du premier bot Telegram
sed -i "s|{TELEGRAM_BOT_2}|$TELEGRAM_BOT_2|g" /etc/matterbridge/matterbridge.toml  # Token du deuxième bot Telegram
sed -i "s|{TELEGRAM_GROUPE1}|$TELEGRAM_GROUPE1|g" /etc/matterbridge/matterbridge.toml  # ID du premier groupe Telegram
sed -i "s|{TELEGRAM_GROUPE2}|$TELEGRAM_GROUPE2|g" /etc/matterbridge/matterbridge.toml  # ID du deuxième groupe Telegram
sed -i "s|{DISCORD_SERVER}|$DISCORD_SERVER|g" /etc/matterbridge/matterbridge.toml  # ID du serveur Discord
sed -i "s|{DISCORD_TOKEN}|$DISCORD_TOKEN|g" /etc/matterbridge/matterbridge.toml  # Token du bot Discord
sed -i "s|{DISCORD_CHANNEL1}|$DISCORD_CHANNEL1|g" /etc/matterbridge/matterbridge.toml  # ID du premier canal Discord
sed -i "s|{DISCORD_CHANNEL2}|$DISCORD_CHANNEL2|g" /etc/matterbridge/matterbridge.toml  # ID du deuxième canal Discord
sed -i "s|{GATEWAY_NAME_1}|$GATEWAY_NAME_1|g" /etc/matterbridge/matterbridge.toml  # Nom du premier pont (gateway)
sed -i "s|{GATEWAY_NAME_2}|$GATEWAY_NAME_2|g" /etc/matterbridge/matterbridge.toml  # Nom du deuxième pont (gateway)

# Afficher le contenu du fichier de configuration si DEBUG est vrai
if [ "$DEBUG" = true ]; then
    echo "Contenu du fichier de configuration Matterbridge :"
    cat /etc/matterbridge/matterbridge.toml
fi

echo "Attente de 2 secondes avant de lancer Matterbridge"
sleep 2  # Pause de 2 secondes

# Lancer Matterbridge avec le fichier de configuration spécifié
exec matterbridge -conf /etc/matterbridge/matterbridge.toml
