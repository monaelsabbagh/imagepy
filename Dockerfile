FROM python:3.10-alpine

WORKDIR /app

RUN apk update && apk add iputils

COPY file.py .

CMD sh -c "python file.py; cd /; sh"
