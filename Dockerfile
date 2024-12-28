# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install Flask
RUN pip install flask

# Copy the application files
COPY globe.py /app/
COPY templates/ /app/templates/
COPY static/ /app/static/

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["python", "globe.py"]
