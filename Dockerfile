FROM python:3.12.8

# Set working directory
WORKDIR /app

# Copy requirements and application files
COPY requirements.txt /app/requirements.txt
COPY math_library /app/math_library
COPY main.py /app/main.py
COPY README.md /app/README.md

# Install system dependencies
RUN apt-get update  apt-get install -y \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
     rm -rf /var/lib/apt/lists/*

# Install dependencies from requirements file
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose port (if necessary)
EXPOSE 8080

# Define startup command
CMD ["python", "main.py"]