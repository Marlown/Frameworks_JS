# Utiliser l'image officielle Node comme base
FROM node:14.17-alpine

# Créer le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier le reste des fichiers du projet
COPY . .

# Compiler l'application Angular
RUN npm run build --prod

# Exposer le port 80
EXPOSE 80

# Démarrer le serveur web pour servir l'application
CMD ["npm", "run", "serve:ssr"]