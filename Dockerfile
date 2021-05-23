FROM ubuntu:18.04
ENTRYPOINT []
RUN apt-get clean && apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip 
RUN python3 -m pip install --no-cache --upgrade pip 
RUN pip install --no-cache rasa==2.5.0 
ADD . /chatterbot/
RUN chmod +x /chatterbot/start_services.sh
CMD /chatterbot/start_services.sh
