FROM python:3.10-slim AS build-stage

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends libpq-dev gcc \
    && apt-get install -y default-libmysqlclient-dev build-essential pkg-config \ 
    && apt-get install -y default-mysql-client\
    && apt-get install -y libmariadb-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt /app/
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

COPY . /app/

FROM python:3.10-slim

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends libmariadb-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
COPY --from=build-stage /opt/venv /opt/venv
COPY --from=build-stage /app /app

ENV PATH="/opt/venv/bin:$PATH"

CMD ["gunicorn", "TaskManagementSystem.wsgi:application", "--bind", "0.0.0.0:8000", "--workers", "9", "--threads", "4"]