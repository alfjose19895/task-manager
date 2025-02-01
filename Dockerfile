# Usa Node.js para construir el proyecto
FROM node:20 AS build
WORKDIR /app

# Copiar archivos y dependencias
COPY angular-app/package.json angular-app/package-lock.json ./
RUN npm install

# Copiar el código fuente y construir la aplicación
COPY angular-app/ .
RUN npm run build --prod

# Usa Nginx para servir la aplicación Angular
FROM nginx:alpine
COPY --from=build /app/dist/angular-app /usr/share/nginx/html

# Exponer puerto
EXPOSE 80

# Ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]
