FROM python:3.11.9

WORKDIR /arXiv-Paper-Curator

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "API:app", "--host", "0.0.0.0", "--port", "8000"]