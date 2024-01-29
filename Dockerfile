# Spécifier l'image de base
FROM node:latest

# if the image non run in instance aws , you be to change FROM node:latest to From --platform=linux/amd64 node: latest ou version of node then build other image

# Créer un répertoire de travail
WORKDIR /app

# Copier le fichier package.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le fichier app.js
COPY . . 

# Exposer le port 8080
EXPOSE 3000

# Démarrer l'application
CMD [ "node", "app.js" ]
