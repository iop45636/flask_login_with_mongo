FROM ubuntu:latest

MAINTAINER Michael Levan

CMD tail -f /dev/null

RUN apt-get update -y && apt-get install -y python3-pip python-dev

EXPOSE 8080
EXPOSE 5000

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT FLASK_APP=/app/app.py flask run --host=0.0.0.0