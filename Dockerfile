# Imagen base con Python
FROM fabricioph2/curso:2

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto
COPY app.py


# Instala Flask
RUN pip install flask
RUN pip install requests

RUN chown -R appuser:appgroup /app

USER appuser

# Expone el puerto en el que correrá la app
EXPOSE 3000

# Comando por defecto para ejecutar la app
CMD ["python", "app.py"]