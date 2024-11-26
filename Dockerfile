# Étape 1: Utiliser une image de base Node.js (version LTS)
FROM node:16

# Étape 2: Définir un répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3: Copier le package.json et package-lock.json (si présents)
COPY package*.json ./

# Étape 4: Installer les dépendances du projet
RUN npm install

# Étape 5: Copier tous les fichiers du projet dans le conteneur
COPY . .

# Étape 6: Exposer le port utilisé par l'application (par défaut, Next.js utili>
EXPOSE 3001

# Étape 7: Lancer l'application avec `npm run dev` (assurez-vous que ce script >
CMD ["npm", "run", "dev"]
