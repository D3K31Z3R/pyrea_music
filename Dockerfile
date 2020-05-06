FROM python:3.9-rc-buster
MAINTAINER B. Belderbos

ENV PTHONUNBUFFERED 1
RUN pip install pipenv
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser --disabled-password user
USER user