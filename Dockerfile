FROM alpine:latest

RUN apk add --no-cache \
    python3-dev \
    py3-pip \
    && pip3 install --upgrade pip

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install \
    django==3.1.7 \
    djangorestframework==3.12.4

EXPOSE 8000

ENV DEBUG=1

ENTRYPOINT ["python3"]

CMD ["ex1.py", "runserver", "0.0.0.0:8000"]
