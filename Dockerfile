# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Expose the port the app runs on (optional, if your app uses a web server)
EXPOSE 8080

# Command to run the Python application
CMD ["python", "app.py"]
