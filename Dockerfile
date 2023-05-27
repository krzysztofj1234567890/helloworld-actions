# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY helloworld-restapi.py .

# Expose the port the application will run on
EXPOSE 5000

# Set the command to run the application
CMD ["python", "helloworld-restapi.py"]
