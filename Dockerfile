FROM n8nio/n8n:latest

RUN mkdir -p /home/node/.n8n/custom-nodes

WORKDIR /home/node/.n8n/custom-nodes

RUN npm install --unsafe-perm \
    n8n-nodes-langchain \
    n8n-nodes-html-extract \
    n8n-nodes-webscraper \
    n8n-nodes-google-search

ENV N8N_CUSTOM_EXTENSIONS="/home/node/.n8n/custom-nodes"
