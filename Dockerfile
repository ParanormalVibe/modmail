FROM alpine:3.12.1

RUN apk add linux-headers \
	&& apk add musl-dev \
	&& apk add python3-dev \
	&& apk add gcc \
	&& apk add python3 \
	&& apk add py3-pip

WORKDIR /app/
COPY ./requirements.txt /app/requirements.txt
RUN pip3 install -r requirements.txt
COPY . /app/

ENTRYPOINT ["python3"]
