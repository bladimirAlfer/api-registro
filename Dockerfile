# Usa una imagen base de Python
FROM python:3.10-slim
WORKDIR /programas/api-registro
RUN pip install fastapi pydantic mysql-connector-python passlib python-jose uvicorn
COPY . .
EXPOSE 8013
CMD ["uvicorn", "app_registro:app", "--host", "0.0.0.0", "--port", "8013"]
