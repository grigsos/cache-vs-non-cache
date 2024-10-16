# Use the desired Python version (here, 3.11-slim)
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy only requirements.txt first to leverage Docker cache for pip installs
COPY requirements.txt .

# Install dependencies, this step will be cached only if both the Python version and requirements.txt are unchanged
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .