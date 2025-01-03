
# Optimal-structure-of-Django-apps


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

   # Sentry 
   SENTRY_DSN    






3. **Run the project locally**:  
   Open your terminal and enter the following command to run the project in development mode:

   1:
   
   ```bash
   python -m venv venv
   ```
   2:
   ```bash
   venv\Scripts\activate
   ```
   3:
   ```bash
   pip install -r requirements.txt
   ```
   4: create SECRET_KEY
   ```bash
   python manage.py shell
   
   ```
      
   ```bash
   >>> from django.core.management.utils import get_random_secret_key
   >>> key = get_random_secret_key()
    # key == SECRET_KEY   
   ```
   
   **Hint 
      Sentry is used for the logging process.
      Read the documentation from the link below

      https://sentry.io
   

   

   



6. **Run the project in production environment**:  
   To deploy the project in production mode, use the following command:

   ```bash
   docker-compose -f docker-compose-stage.yaml up --build -d
   ```

7. **Build the database and Redis containers**:  
   To initialize the database and Redis containers, run the following command:

   ```bash
   docker-compose up --build -d 
   ```
     
   ```bash
   docker-compose exec backend python manage.py (syntax)
   ``` 
