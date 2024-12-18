FROM python:3.12

WORKDIR /app

COPY requirements.txt requirements.txt
COPY math_library/ math_library/
COPY main.py main.py
COPY README.md README.md

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]