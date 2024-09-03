# Use the official Python base image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the content of the local app directory to the working directory
COPY . /app

# Install Flask and other dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Make port 5000 available 
EXPOSE 5000

# Specify the command to run on container start
CMD ["python3", "app/app.py"]
