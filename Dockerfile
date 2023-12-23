#FastAPI
FROM python:3.10.12

WORKDIR /fastapiapp

COPY . /fastapiapp

RUN pip install fastapi uvicorn jinja2

EXPOSE 7000

CMD ["uvicorn", "main:app", "--host", "127.0.0.1", "--port", "7000"]