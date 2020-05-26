FROM python:stretch

WORKDIR /app
COPY . /app


RUN pip3 install --upgrade pip
COPY ./requirements.txt ./
RUN pip3  install  -r requirements.txt



ENTRYPOINT ["gunicorn", "-b :8080", "main:APP"]