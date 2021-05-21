FROM python:3.8

RUN mkdir -p /app_python

COPY flask-pytest-example-v2.tar.gz /app_python

WORKDIR /app_python

RUN tar -xvf flask-pytest-example-v2.tar.gz

WORKDIR /app_python/flask-pytest-example-v2.tar.gz

RUN pip install --no-cache-dir -r requirements.txt

COPY python.applica/ . 

CMD python app.py

# copy the packaged jar file into our docker image
#COPY helloWorld.class /app
 
#WORKDIR /app

# set the startup command to execute the jar
#CMD javac HelloWorld.java
#CMD java helloWorld
