FROM python:3.9-alpine

# needed for health check
RUN apk add --update-cache \
    curl

RUN mkdir -p /app
COPY . /app
WORKDIR /app

CMD ["python3", "main.py"]