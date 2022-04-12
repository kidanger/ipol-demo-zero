FROM debian:bullseye

RUN apt-get update && apt-get install -y make gcc libpng-dev libtiff-dev libjpeg-dev

COPY . .
RUN make
