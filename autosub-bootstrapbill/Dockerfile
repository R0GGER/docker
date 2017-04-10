FROM python:2-slim
MAINTAINER R0GGER

RUN apt-get update 
RUN apt-get install -y git nano

RUN git clone https://github.com/BenjV/autosub-bootstrapbill.git /app/autosub
RUN pip install cheetah

EXPOSE 8083
WORKDIR /app/autosub

CMD ["python2", "AutoSub.py"]
