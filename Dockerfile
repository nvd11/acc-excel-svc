# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the project files into the container at /app
COPY . /app

# Install any dependencies specified in requirements.txt
# Assuming you have a requirements.txt file
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8000 available to the world outside this container
EXPOSE 80

# Run server.py when the container launches
CMD ["python", "server.py"]