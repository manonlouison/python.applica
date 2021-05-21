FROM python:3.8

RUN mkdir -p /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY python.applica/ . 

CMD [ "python", "./server.py" ]

# copy the packaged jar file into our docker image
#COPY helloWorld.class /app
 
#WORKDIR /app

# set the startup command to execute the jar
#CMD javac HelloWorld.java
#CMD java helloWorld
