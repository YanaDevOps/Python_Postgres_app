# Python PostgreSQL App

![Python](https://img.shields.io/badge/Python-3.9-3776AB?style=flat&logo=python&logoColor=ffffff)
![Flask](https://img.shields.io/badge/Flask-1.1.2-000000?style=flat&logo=flask&logoColor=ffffff)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13.0-336791?style=flat&logo=postgresql&logoColor=ffffff)
![Docker](https://img.shields.io/badge/Docker-ready-2496ED?style=flat&logo=docker&logoColor=ffffff)

This is a sample project using Flask that demonstrates how to use a PostgreSQL database to store and display a list of users.

## 📋 Description

The application connects to a PostgreSQL database and retrieves data from the `users` table, displaying it in an HTML table format.

## Tech Stack

- Python
- Flask
- PostgreSQL
- Docker

## 🚀 Start of work

### Prerequisites

- Ensure you have [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) installed.

### Steps

1. Clone the repository:

   ```bash
   git clone <YOUR_REPOSITORY_URL>
   cd <PROJECT_FOLDER_NAME>
   ```

2. Start the application using Docker Compose:
   ```bash
   docker compose up --build
   ```

3. Open your browser and navigate to:
   ```bash
   http://localhost:5000/
   ```

## 📂 Project structure
   ```bash
   Python_Postgres_app/ 
   ├── Dockerfile 
   ├── docker-compose.yml 
   ├── init.sql 
   ├── requirements.txt 
   └── app.py
   ```

## Functionality 🌟

- Connects to a PostgreSQL database.
- Retrieves user data from the `users` table.
- Displays the list of users in an HTML table format.

## Technology 💻

- **Python**: The programming language used for the backend.
- **Flask**: The web framework for building the web application.
- **PostgreSQL**: The database management system for storing user data.
- **Docker**: Containerization platform to easily manage dependencies and environment.

## Database Initialization File
The init.sql file contains SQL commands for creating the database and the users table.

### Customization
- Replace `<YOUR_REPOSITORY_URL>` and `<PROJECT_FOLDER_NAME>` with the actual values.
- Add any additional information you think is necessary, such as usage instructions or contribution guidelines.

## 👤 Author
Name: Yana Lysenko

GitHub: [YanaDevOps](https://github.com/YanaDevOps)
