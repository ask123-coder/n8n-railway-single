FROM n8nio/n8n:latest

# Instala nodos útiles para IA y scraping funcional
RUN npm install -g \
  n8n-nodes-langchain \
  n8n-nodes-chatgpt \
  n8n-nodes-webscraper

ENV N8N_DISABLE_PRODUCTION_MAIN_LOG=true
