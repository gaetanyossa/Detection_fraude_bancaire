# Utiliser l'image de base Python 3.9
FROM python:3.9

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers requis dans le conteneur
COPY . .

# Installer les dépendances du projet
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port utilisé par Streamlit
EXPOSE 8501

# Commande par défaut pour exécuter l'application Streamlit
CMD ["streamlit", "run", "app.py"]
