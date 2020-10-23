FROM python:3

WORKDIR /opt/pythonDocker
RUN chmod 777 .
RUN pip install flask
COPY . .
ENV FLASK_APP=./api/api.py
CMD [ "flask", "run", "--host", "0.0.0.0" ]