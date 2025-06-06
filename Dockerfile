FROM n8nio/n8n:latest

# Crea carpeta para nodos personalizados
RUN mkdir -p /home/node/.n8n/custom-nodes

# Establece el directorio de trabajo
WORKDIR /home/node/.n8n/custom-nodes

# Instala nodos seguros y disponibles
RUN npm install --unsafe-perm \
    n8n-nodes-langchain \
    n8n-nodes-html-extract \
    n8n-nodes-webscraper

# Informa a n8n que cargue estos nodos personalizados
ENV N8N_CUSTOM_EXTENSIONS="/home/node/.n8n/custom-nodes"
