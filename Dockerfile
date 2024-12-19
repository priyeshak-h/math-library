FROM python:3.12-slim

# Set the working directory
WORKDIR /app

# Copy requirements and application files
COPY requirements.txt .
COPY math_library/ math_library/
COPY README.md .
COPY main.py .

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install dependencies from requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port (if necessary, adjust the port number as needed)
EXPOSE 8080

# Define startup command
CMD ["python", "main.py"]