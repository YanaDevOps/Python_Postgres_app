# Python PostgreSQL App

This is a sample project using Flask that demonstrates how to use a PostgreSQL database to store and display a list of users.

## Description

The application connects to a PostgreSQL database and retrieves data from the `users` table, displaying it in an HTML table format.

## Tech Stack

- Python
- Flask
- PostgreSQL
- Docker

## Installation and Running

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

## Database Initialization File
The init.sql file contains SQL commands for creating the database and the users table.

### Customization
- Replace `<YOUR_REPOSITORY_URL>` and `<PROJECT_FOLDER_NAME>` with the actual values.
- Add any additional information you think is necessary, such as usage instructions or contribution guidelines.
