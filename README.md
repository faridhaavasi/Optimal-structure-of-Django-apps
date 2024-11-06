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
