# Django Project with Docker Compose

This project uses Docker and Docker Compose to manage services in both **development** and **production** environments.

## Table of Contents

1. [Project Overview](#project-overview)
2. [Setting Up the Project](#setting-up-the-project)
   1. [Create the Environment File (.env)](#create-the-environment-file-env)
   2. [Set Up the Project in Development Environment](#set-up-the-project-in-development-environment)
   3. [Set Up the Project in Production Environment](#set-up-the-project-in-production-environment)
3. [Running the Project](#running-the-project)
   1. [Start the Project in Development](#start-the-project-in-development)
   2. [Start the Project in Production](#start-the-project-in-production)
4. [Database Migrations](#database-migrations)
5. [Generate New Crypto Key](#generate-new-crypto-key)

## Project Overview

This project uses **Docker Compose** to orchestrate various services required by the Django project, including **PostgreSQL**, **Redis**, and **SMTP** for email testing. It includes configurations for both **development** and **production** environments.

## Setting Up the Project

### 1. Create the Environment File (.env)

Create a `.env` file in the root directory of the project and add the necessary configuration values. Below is a sample of the `.env` file:

```env
SECRET_KEY='Your Django secret key'

DEBUG=True  # Boolean value for development mode

# Database settings
POSTGRES_DB=database_name
POSTGRES_USER=user_name
POSTGRES_PASSWORD=password
DB_HOST=db

# Redis settings
REDIS_HOST=redis
REDIS_PORT=6379
2. Set Up the Project in Development Environment
To set up the project in the development environment, follow these steps:

1. Create a Virtual Environment and Install Dependencies
Run the following commands:

bash
Copy code
# Create a virtual environment
python -m venv venv

# Activate the virtual environment
# On Windows:
venv\Scripts\activate
# On macOS or Linux:
source venv/bin/activate

# Install the required dependencies
pip install -r requirements.txt
2. Start Docker Services in Development
To run the necessary services in the development environment, use the docker-compose_dev.yml file:

bash
Copy code
docker-compose -f docker-compose_dev.yml up -d
3. Run Database Migrations
After setting up the services, run the migrations to set up your database:

bash
Copy code
python manage.py migrate
4. Start the Development Server
Finally, start the Django development server:

bash
Copy code
python manage.py runserver
3. Set Up the Project in Production Environment
To set up the project in a production environment using the standard Docker Compose, follow these steps:

Ensure that the .env file is filled with appropriate production settings.
Run Docker Compose for production:
bash
Copy code
docker-compose up -d
This will start all the necessary services for the project in a production-ready configuration.

Running the Project
1. Start the Project in Development
To start the services in a development environment, use the following command:

bash
Copy code
docker-compose -f docker-compose_dev.yml up -d
2. Start the Project in Production
To run the services in a production environment, use the following command:

bash
Copy code
docker-compose up -d
Database Migrations
After starting the services, don't forget to run the database migrations to set up the database schema:

bash
Copy code
python manage.py migrate
Generate New Crypto Key
To generate a new crypto key, you can use the following Python code:

python
Copy code
from Crypto import Random

key = Random.get_random_bytes(32)
This README provides the full setup instructions for running the project in both development and production environments using Docker Compose.

vbnet
Copy code

Let me know if you'd like any modifications to this!
