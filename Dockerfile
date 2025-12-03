# Imagen oficial ligera de Python 3.12
FROM python:3.12-slim

# Establecer directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivo de dependencias primero (optimiza caché)
COPY requirements.txt .

# Instalar dependencias del proyecto
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Instalar herramientas de DevSecOps (tests, lint, seguridad)
RUN pip install pytest flake8 bandit safety

# Copiar todo el código al contenedor
COPY . .

# Asegurar que el código se puede importar
ENV PYTHONPATH=/app

# Comando por defecto: ejecutar pruebas
CMD ["pytest"]