
# Django Monolithic Architecture

Inspired by this repository: [amirbahador-hub](https://github.com/amirbahador-hub/django_style_guide.git)

## Running the Project

To run the project, you need to create a `.env` file in the project's root directory and enter the required values. (Instructions are provided below)

### Steps to Run the Project

1. **Create a .env file**:  
   In the root directory of the project, create a file named `.env`.

2. **Set up the .env file**:  
   Open the `.env` file and enter the necessary configuration values. Below is an example of the values you need to configure:

   ```env
   SECRET_KEY='Django Secret Key, you can generate with get_random_secret_key() function from django.core.management.utils.'

   DEBUG=True  # Boolean value for development mode

   WEB_DOMAIN=127.0.0.1
   WEB_FRONT_DOMAIN=localhost:3000

   DB_NAME=my_database
   DB_USER=root
   DB_PASS=mypassword
   DB_PORT=5432
   DB_HOST=myhost
   DB_HOST_DEBUG=localhost

   REDIS_HOST=redis_bio_host
   REDIS_HOST_DEBUG=localhost
   REDIS_PASSWORD=redis_bio_password
   REDIS_PORT=6388
   ```

3. **Run the project locally**:  
   Open your terminal and enter the following command to run the project in development mode:

   ```bash
   docker-compose --file docker-compose-develop.yml up -d
   ```

4. **Run the project in production environment**:  
   To deploy the project in production mode, use the following command:

   ```bash
   docker-compose up -d
   ```

5. **Build the database and Redis containers**:  
   To initialize the database and Redis containers, run the following command:

   ```bash
   docker-compose --file docker-compose-develop.yml up -d postgres_project redis_project
   ```

6. **Generate a new crypto key**:  
   To generate a new cryptographic key, you can use the following Python code:

   ```python
   from Crypto import Random

   key = Random.get_random_bytes(32)
   ```

## Setting Environment Variables

This project relies on environment variables to configure database, SMS service settings, etc. 

- Create a `.env` file in the root directory of the project and add the configuration values as shown above.

These environment variables will be used to configure the database, Redis, and other services dynamically based on the environment.

## Conclusion

This README provides the steps to set up and run the Django project in both development and production environments using Docker Compose. Make sure to adjust the `.env` file with the appropriate configuration values for your system.
