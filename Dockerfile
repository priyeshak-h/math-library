FROM python:3.12.8

WORKDIR /app

COPY requirements.txt .
COPY . .

RUN apt-get update  \
    apt-get install -y \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
     rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]