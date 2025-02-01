# Usa la imagen oficial de .NET SDK para construir el proyecto
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copiar archivos del proyecto
COPY TaskManager.Api/ TaskManager.Api/
WORKDIR /app/TaskManager.Api

# Restaurar dependencias
RUN dotnet restore

# Compilar el proyecto
RUN dotnet publish -c Release -o /publish

# Usa la imagen de .NET runtime para ejecutar la aplicación
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /publish .

# Exponer puerto
EXPOSE 5000

# Ejecutar la aplicación
CMD ["dotnet", "TaskManager.Api.dll"]
