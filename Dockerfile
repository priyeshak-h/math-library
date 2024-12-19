FROM python:3.12.8-slim-bullseye

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    TZ=UTC

# Create a non-root user and group
RUN groupadd -r appgroup && useradd -r -g appgroup appuser

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files, respecting .dockerignore if present
COPY math_library/ /app/math_library/
COPY main.py /app/

# Set appropriate permissions
RUN chown -R appuser:appgroup /app

# Switch to the non-root user
USER appuser

# Expose the necessary port(s)
EXPOSE 8000

# Define the entry point and the default command
ENTRYPOINT ["python"]
CMD ["main.py"]

# Health check to ensure the service is running
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8000/health || exit 1

# Handle signals properly
STOPSIGNAL SIGTERM