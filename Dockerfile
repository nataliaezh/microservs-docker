FROM python:3.9

RUN apt-get install -y python-pip

ADD . /python

EXPOSE 8000
 
RUN pip install -r requirements.txt

ENTRYPOINT python /python/app.py runserver 0.0.0.0:8000