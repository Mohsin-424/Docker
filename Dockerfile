# Base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application
COPY . .

EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
