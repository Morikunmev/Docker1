FROM node:18
RUN mkdir -p /home/app
WORKDIR /home/app

# Copiar solo los archivos de dependencias primero
COPY package*.json ./

# Instalar dependencias DENTRO del contenedor
RUN npm install

# Luego copiar el resto del código
COPY . .

EXPOSE 3000
CMD ["node", "index.js"]