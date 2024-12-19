FROM python:3.12-slim-bullseye

WORKDIR /app

COPY requirements.txt /app/
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    && pip install --no-cache-dir -r requirements.txt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . /app

CMD ["python", "main.py"]