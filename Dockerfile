FROM python:3.6-slim
WORKDIR /app
copy restapi2.py requirements.txt /app/
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 8080
CMD ["python", "restapi2.py"]
