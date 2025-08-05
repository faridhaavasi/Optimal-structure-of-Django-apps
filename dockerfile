# Use official Python image as base
FROM python:3.10

# Set working directory inside the container
WORKDIR /app

# Copy requirements file to container
COPY requirements.txt requirements.txt

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the rest of the application files to the container
COPY . .

# Add and set permissions for wait-for-it script (for dependency readiness)
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh
