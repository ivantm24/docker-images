FROM ivantm24/python:3.10-ubuntu22.10
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install libpq-dev -y && apt-get install postgresql-contrib -y
RUN pip install django==4.1.2
RUN pip install psycopg2==2.9.4
