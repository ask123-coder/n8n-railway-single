FROM n8nio/n8n:latest

# Crear directorio para nodos personalizados
RUN mkdir -p /home/node/.n8n/custom-nodes

# Establecer directorio de trabajo
WORKDIR /home/node/.n8n/custom-nodes

# Instalar nodos comunitarios disponibles
RUN npm install --unsafe-perm \
    n8n-nodes-langchain \
    n8n-nodes-firecrawl \
    n8n-nodes-crawl-and-scrape
