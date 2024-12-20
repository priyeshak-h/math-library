FROM python:3.12.8-slim

# Set the working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libxslt1-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Set the startup command
CMD ["python", "main.py"]