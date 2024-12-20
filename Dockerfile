FROM python:3.12

WORKDIR /app

COPY requirements.txt requirements.txt
COPY main.py main.py
COPY math_library/ math_library/

RUN apt-get update  apt-get install -y \
    libxml2-dev \
    libxslt-dev \
    zlib1g-dev \
    libffi-dev \
    libssl-dev \
    libjpeg-dev \
     rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]