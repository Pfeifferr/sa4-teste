from python:3.10-slim
workdir /app

copy requirements.txt /app/
run pip install -r /app/requirements.txt
copy . /app/
expose 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]