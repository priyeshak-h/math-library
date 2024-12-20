FROM python:3.12.8

# Set the working directory
WORKDIR /app

# Copy requirements and application files
COPY requirements.txt .
COPY . .

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev

# Install dependencies from requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Expose port if necessary (example: 5000)
EXPOSE 5000

# Define startup command
CMD ["python", "main.py"]