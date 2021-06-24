FROM python:3.6
LABEL "backend"="backend"
RUN apt-get update
RUN apt-get install --yes python3
RUN apt-get install --yes python3-pip
RUN apt-get install --yes python3-setuptools
RUN mkdir /new_chtapp1
WORKDIR /new_chtapp1
COPY requirements.txt /new_chtapp1
RUN pip3 install PyMySQL
RUN pip3 install mysqlclient
RUN pip3 install -r requirements.txt

