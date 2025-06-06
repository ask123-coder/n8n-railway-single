FROM n8nio/n8n:latest

# Crea la carpeta de nodos personalizados (queda lista por si en el futuro quieres meter alguno válido)
RUN mkdir -p /home/node/.n8n/custom-nodes

# WORKDIR para nodos personalizados
WORKDIR /home/node/.n8n/custom-nodes

# No instalamos por ahora porque no hay nodos válidos que sirvan hoy (evita que se rompa el deploy)
# Puedes agregar aquí en el futuro si hay algún nodo útil.

# Expone la carpeta para que n8n la lea (por si luego agregas nodos válidos)
ENV N8N_CUSTOM_EXTENSIONS="/home/node/.n8n/custom-nodes"
