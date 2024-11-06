
# Django 


## Running the Project

To run the project, you need to create a `.env` file in the project's root directory and enter the required values. (Instructions are provided below)

### Steps to Run the Project

1. **Create a .env file**:  
   In the root directory of the project, create a file named `.env`.

2. **Set up the .env file**:  
   Open the `.env` file and enter the necessary configuration values. Below is an example of the values you need to configure:

   ```env
   # Database configuration
   POSTGRES_DB=mydatabase
   POSTGRES_USER=root
   POSTGRES_PASSWORD=my-password
   DB_HOST=db
   DB_PORT=5432
   
   # Redis configuration
   REDIS_HOST=redis
   REDIS_PORT=6379
   # Django configuration
   SECRET_KEY=''
   DEBUG=True








4. **Run the project locally**:  
   Open your terminal and enter the following command to run the project in development mode:
      ```bash
   docker-compose --file docker-compose_dev.yml up -d
   ```
   
   ```bash
   python -m venv venv
   ```
   
   ```bash
   venv\Scripts\activate
   ```
   
   ```bash
   pip install -r requirements.txt
   ```
   
   ```bash
   python manage.py migrate
   ```
   ```bash
      python manage.py runserver   
   ```
   



6. **Run the project in production environment**:  
   To deploy the project in production mode, use the following command:

   ```bash
   docker-compose up -d
   ```

7. **Build the database and Redis containers**:  
   To initialize the database and Redis containers, run the following command:

   ```bash
   docker-compose --file docker-compose-developـ_dev.yml up -d 
   ```

8. **Generate a new crypto key**:  
   To generate a new cryptographic key, you can use the following Python code:


## Setting Environment Variables

This project relies on environment variables to configure database, SMS service settings, etc. 

- Create a `.env` file in the root directory of the project and add the configuration values as shown above.

These environment variables will be used to configure the database, Redis, and other services dynamically based on the environment.

## Conclusion

This README provides the steps to set up and run the Django project in both development and production environments using Docker Compose. Make sure to adjust the `.env` file with the appropriate configuration values for your system.
