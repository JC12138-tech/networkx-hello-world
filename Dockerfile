FROM python:3.12-slim

# Copy requirements file
COPY requirements.txt /tmp/requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Set working directory
WORKDIR /workspace

# Copy all project files into container
COPY . .

# Run the Python script when container starts
CMD ["python", "cmu_campus_network.py"]
