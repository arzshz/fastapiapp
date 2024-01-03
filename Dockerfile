#FastAPI
FROM python:3.10.12

WORKDIR /fastapiapp

COPY . /fastapiapp

RUN pip install fastapi uvicorn jinja2

EXPOSE 7000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7000"]
