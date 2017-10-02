FROM python:2.7.14

RUN apt-get update -y && \
    apt-get install -y postgresql-client libsnappy-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN mkdir /app/tmp
CMD ["python", "setup.py"]

COPY requirements.txt /app/
RUN pip install -r /app/requirements.txt

COPY *.py /app