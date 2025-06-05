FROM n8nio/n8n:latest

# Crea la carpeta de nodos personalizados
RUN mkdir -p /home/node/.n8n/custom-nodes

# Instala nodos con permisos y los coloca donde n8n los reconoce
WORKDIR /home/node/.n8n/custom-nodes

RUN npm install --unsafe-perm \
    n8n-nodes-langchain \
    n8n-nodes-chatgpt

# Expone la carpeta de nodos al entorno n8n
ENV N8N_CUSTOM_EXTENSIONS="/home/node/.n8n/custom-nodes"
