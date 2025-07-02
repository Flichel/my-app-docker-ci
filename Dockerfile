# Usa una imagen base oficial de Node.js
FROM node:20-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos de definición de dependencias e instala
COPY package*.json ./
RUN npm install

# Copia el código de la aplicación
COPY . .

# Expone el puerto que la aplicación escuchará
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD [ "npm", "start" ]