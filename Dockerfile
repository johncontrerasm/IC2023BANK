# Establece la imagen base
FROM python:3.8.10

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . /app

# Instala las dependencias
RUN pip install -r requirements.txt

# Expone el puerto en el que se ejecutará tu aplicación
EXPOSE 8000

# Define el comando para ejecutar tu aplicación
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
