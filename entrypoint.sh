#!/bin/sh

# Exit script on any command failure
set -e

# Wait for PostgreSQL and Redis to be ready
/wait-for-it.sh db:5432 --timeout=30 --strict
/wait-for-it.sh redis:6379 --timeout=30 --strict

# Run Django database migrations
python manage.py makemigrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start the Gunicorn server
exec gunicorn core.wsgi --bind 0.0.0.0:8000