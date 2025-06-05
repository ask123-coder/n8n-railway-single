FROM n8nio/n8n:latest

# Instala nodos personalizados verificados, con permisos adecuados
RUN npm install -g --unsafe-perm \
  n8n-nodes-langchain \
  n8n-nodes-chatgpt

ENV N8N_DISABLE_PRODUCTION_MAIN_LOG=true
