# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy only the necessary files into the container at /app
COPY app.py .
COPY templates/ templates/
COPY cb.pkl .

# Install Flask and required Python packages
RUN pip install Flask scikit-learn joblib

# Expose the port the app runs on
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]
