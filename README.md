# Master's Thesis Project: A Comparative Study of Back-end Applications

## Introduction
This repository contains the source code for the Master's thesis titled "A Comparative Study of Back-end Applications Written in C# and Python". The project encompasses two distinct back-end applications: one developed using ASP.NET Core (following the MVC pattern) and another using Django (following the MTV pattern). The primary focus of this study is to evaluate and compare these applications based on several key parameters including efficiency, RAM/CPU usage, performance, scalability, maintainability, and extensibility.

## Structure
- `AspNetTaskManagementSystem`: This directory contains the ASP.NET Core application.
- `DjangoTaskManagementSystem`: This directory houses the Django application.
- `docker-compose.yml`: Docker Compose file to set up and run the multi-container Docker applications.

Each directory has its specific `.gitignore` files and Dockerfiles.

## Prerequisites
- Docker: The applications are containerized and require Docker to be installed and running on your machine.
- Git: To clone the repository.

## Installation

1. Clone the repository:
```bash
git clone https://github.com/Incloud3/TaskManagementSystem.git
```
2. Navigate to the cloned directory:
```bash
cd TaskManagementSystem
```
3. To build and run the applications using Docker Compose, execute:
```bash
docker-compose up --build
```
4. Run migrations for Django application:
```bash
docker exec -it taskmanagementsystem-django_app-1 python manage.py migrate
```

*Note*: Ensure that the Docker containers are running before executing this command. ASP.NET Core Application doesn't require running migrations as they are integrated withing the Program.cs file during build.

## Usage

### Accessing the Applications
- The ASP.NET application is accessible at `http://localhost:8001`
- The Django application can be accessed at `http://localhost:8000`

### Database
- Both applications use MySQL running in a Docker container.
- The database configurations can be found in the respective application settings.

### Stopping the Applications
- To stop and remove containers, networks, and volumes, run:
```bash
docker-compose down
```
## Contributing
Contributions, issues, and feature requests are welcome. Feel free to check [issues page](https://github.com/Incloud3/TaskManagementSystem/issues) if you want to contribute.

## License
[MIT License](LICENSE)

## Author
Damian Maciąg - DamMaciag@gmail.com
