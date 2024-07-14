# Dockerfile
# Image for hello_world.py
FROM python:3.8-slim as hello_world
WORKDIR /app
COPY src/hello_world.py .
CMD ["python", "hello_world.py"]

# Image for flask_app.py
FROM python:3.8-slim as flask_app
WORKDIR /app
COPY src/flask_app.py .
RUN pip install flask
CMD ["python", "flask_app.py"]
