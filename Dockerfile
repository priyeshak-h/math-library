FROM python:3.12-slim-bullseye

RUN sudo apt-get update
RUN sudo apt-get install build-essential libssl-dev libffi-dev python3-dev

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]