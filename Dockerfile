FROM python:3.12.8-alpine

WORKDIR /app

COPY requirements.txt .
RUN apk update  \
    apk add --no-cache gcc musl-dev libffi-dev openssl-dev  \
    pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]