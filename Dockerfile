FROM python:3.10

WORKDIR /app

COPY file.py .

CMD sh -c "python file.py; cd /; sh"