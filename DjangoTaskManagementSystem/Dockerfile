
# Build stage
FROM python:3.10-slim as build-stage

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

# Install system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends libpq-dev gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a virtual environment and activate it
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Upgrade pip and install required Python packages
COPY requirements.txt /app/
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Copy the application and run tests
COPY . /app/
RUN python manage.py test

# Final image
FROM python:3.10-slim

WORKDIR /app

# Copy virtual environment and application from build stage
COPY --from=build-stage /opt/venv /opt/venv
COPY --from=build-stage /app /app

# Activate the virtual environment
ENV PATH="/opt/venv/bin:$PATH"

CMD ["gunicorn", "TaskManagementSystem.wsgi:application", "--bind", "0.0.0.0:8000"]
