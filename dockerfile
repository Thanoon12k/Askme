FROM python:3.8-slim-bluster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

RUN ["python","manage.py","runserve","0.0.0.0:8000"]

