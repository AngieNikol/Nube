FROM python:3.3-alpine
WORKDIR /app
COPY app/ ./
RUN pip install --upgrade pip
RUN pip install -r requeriments.txt
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
