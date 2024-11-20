# Étape 1 : Image de base
FROM node:16

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier le fichier package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Étape 4 : Copier le reste du code de l'application
COPY . .

# Étape 5 : Exposer le port sur lequel l'application écoute
EXPOSE 3000

# Étape 6 : Commande de démarrage
CMD ["npm", "start"]
