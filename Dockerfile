FROM n8nio/n8n:latest

# Crea la carpeta de nodos personalizados
RUN mkdir -p /home/node/.n8n/custom-nodes

# Define la ruta de trabajo para los nodos
WORKDIR /home/node/.n8n/custom-nodes

# Instala nodos personalizados desde NPM con permisos seguros
RUN npm install --unsafe-perm \
    n8n-nodes-langchain \
    n8n-nodes-webscraper

# Expone la carpeta de nodos al entorno n8n
ENV N8N_CUSTOM_EXTENSIONS="/home/node/.n8n/custom-nodes"
