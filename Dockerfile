FROM python:3.11-slim

WORKDIR /app

# Copy only necessary files
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir

COPY . .

RUN pip install --no-cache-dir .
