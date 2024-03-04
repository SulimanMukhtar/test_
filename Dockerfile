FROM python:3.9

ENV PYTHONUNBUFFERED=1

WORKDIR /code

RUN apt-get update \
    && apt-get install -y python3-venv \
    && rm -rf /var/lib/apt/lists/*

COPY . /code

RUN pip install --upgrade pip

RUN pip install solana==0.32.0

ENTRYPOINT ["python", "main.py"]
