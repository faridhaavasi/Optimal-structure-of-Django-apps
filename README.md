# Django Project with Docker Compose

This project uses Docker and Docker Compose to manage services in both **development** and **production** environments.

## Setting Up the Project

### 1. Create the Environment File (.env)

Create a `.env` file in the root directory of the project and add the necessary configuration values. A sample `.env` file is shown below:

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
