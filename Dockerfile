# Image de base Node.js officielle (version LTS, variante légère)
FROM node:22-alpine
# Répertoire de travail dans le conteneur
WORKDIR /usr/src/app
# Installation des seules dépendances de production
COPY package*.json ./
RUN npm ci --omit=dev
# Copie du code source
COPY . .
# Port sur lequel l'application écoute
EXPOSE 3000
# Commande par défaut au démarrage du conteneur
CMD ["node", "server.js"]
