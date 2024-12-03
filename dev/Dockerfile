# Dockerfile pour héberger une application statique
FROM nginx:latest

# Copier les fichiers de l'application
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Exposer le port 80 pour HTTP
EXPOSE 80

# Commande de démarrage
CMD ["nginx", "-g", "daemon off;"]
