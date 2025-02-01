# Usa una imagen oficial de Node como base
FROM node:18 AS build

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar archivos necesarios
COPY ./angular-app/package.json ./package.json
COPY ./angular-app/package-lock.json ./package-lock.json
 

# Instalar dependencias
RUN npm install -g @angular/cli
RUN npm install

# Copiar el resto del código del frontend
COPY angular-app/ ./ 

# Construir la aplicación en modo producción
RUN npm run build --configuration=production

CMD ["ng", "serve", "--host", "0.0.0.0"]
