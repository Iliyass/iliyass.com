FROM alpine:3.12

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.80.0/hugo_0.80.0_Linux-64bit.tar.gz

RUN apk update

RUN apk add tar

RUN tar xzvf hugo_0.80.0_Linux-64bit.tar.gz

RUN mkdir -p app
WORKDIR /app
ENTRYPOINT [ "./../hugo" ]