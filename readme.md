# Task Manager App

## Tecnologías
- **Frontend**: Angular 17 (con Tailwind CSS o Material UI)
- **Backend**: .NET 8 (API RESTful)
- **Base de Datos**: SQL Server
- **Contenedores**: Docker + Docker Compose

## Configuración y Ejecución
### 1. Clonar el repositorio
```sh
#git clone https://github.com/tu-usuario/task-manager.git
cd task-manager
cp .env.example .env
docker-compose up --build -d

#Acceder a la aplicación
Frontend: http://localhost:4200
Backend: http://localhost:5000
Base de datos: localhost:1433 (usuario sa)