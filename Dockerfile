FROM python:3.9 AS builder
WORKDIR /app
COPY ./requirements.txt .
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir -r requirements.txt

FROM python:3.9-slim
WORKDIR /app
RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local /usr/local
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]
