FROM alpine:3.16

RUN apk add --update-cache \
    curl

RUN mkdir -p /app
COPY . /app
WORKDIR /app

CMD ["sh", "run.sh"]