FROM python:3.12.8

WORKDIR /app

COPY requirements.txt .

RUN apt-get update  \
    apt-get install -y libxml2-dev libxslt1-dev  \
    pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]