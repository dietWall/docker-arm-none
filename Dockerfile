FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget cmake xz-utils

WORKDIR /home/gcc-arm-11

RUN wget https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi.tar.xz

RUN tar -xf gcc-arm-11.2-2022.02-x86_64-arm-none-eabi.tar.xz

ENV PATH=/home/gcc-arm-11/gcc-arm-11.2-2022.02-x86_64-arm-none-eabi/bin:$PATH