FROM python:3.12-slim-bullseye

WORKDIR /app

COPY requirements.txt requirements.txt
COPY math_library/ math_library/
COPY README.md README.md
COPY main.py main.py

RUN apt-get update && apt-get install -y \
    && pip install --no-cache-dir -r requirements.txt \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

CMD ["python", "main.py"]