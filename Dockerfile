# Use the official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install Flask and Gunicorn
RUN pip install flask gunicorn

# Copy the application files
COPY . .

# Expose port 8080
EXPOSE 8080

# Run the application using Gunicorn
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8080", "globe:app"]
