FROM python:3.10

WORKDIR /app

COPY file.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "file.py"]