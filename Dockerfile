
FROM python:3.6.9-alpine3.10 

RUN apk add --update \
  bash \
  git \ 
  #python \
  #py-pip \
  && rm -rf /var/cache/apk/*

# Install theharvester from git along with deps 
WORKDIR /usr/share
RUN pip3 install requests && git clone https://github.com/laramies/theHarvester.git && chmod +x theHarvester/theHarvester.py

#ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["python", "theHarvester/theHarvester.py"]