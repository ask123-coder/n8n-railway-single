FROM n8nio/n8n:latest

RUN npm install -g --unsafe-perm \
  n8n-nodes-langchain

ENV N8N_DISABLE_PRODUCTION_MAIN_LOG=true
