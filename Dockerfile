# Usa una imagen base oficial de Node.js
FROM node:14

# Crea un directorio de trabajo
WORKDIR /app

# Copia package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de la aplicación
COPY . .

# Expone el puerto en el que la aplicación se ejecuta
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD ["node", "index.js"]
