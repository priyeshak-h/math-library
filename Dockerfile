FROM python:3.12

WORKDIR /app

COPY requirements.txt /app/requirements.txt
COPY math_library /app/math_library
COPY main.py /app/main.py
COPY README.md /app/README.md

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]