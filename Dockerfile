FROM python:3.12

WORKDIR /app

COPY requirements.txt .
RUN apt-get update && \
    apt-get install -y \
        libxml2 \
        libxslt1.1 \
        libgdal26 && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]