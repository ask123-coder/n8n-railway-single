FROM n8nio/n8n:latest

USER root

RUN npm install -g --unsafe-perm \
  n8n-nodes-langchain \
  n8n-nodes-chatgpt

USER node

ENV N8N_DISABLE_PRODUCTION_MAIN_LOG=true
