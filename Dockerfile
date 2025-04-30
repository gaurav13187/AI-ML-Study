# Use an official Python image from DockerHub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the files into the container
COPY app.py .
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
