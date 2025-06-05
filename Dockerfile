FROM n8nio/n8n:latest

# Instala nodos personalizados verificados en npm
RUN npm install -g \
  n8n-nodes-langchain \
  n8n-nodes-chatgpt

ENV N8N_DISABLE_PRODUCTION_MAIN_LOG=true
