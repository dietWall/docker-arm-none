FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget cmake xz-utils

WORKDIR /home/gcc-arm

RUN wget https://developer.arm.com/-/media/Files/downloads/gnu/12.2.mpacbti-rel1/binrel/arm-gnu-toolchain-12.2.mpacbti-rel1-x86_64-arm-none-eabi.tar.xz 


RUN tar -xf arm-gnu-toolchain-12.2.mpacbti-rel1-x86_64-arm-none-eabi.tar.xz 
RUN mv arm-gnu-toolchain-12.2.mpacbti-rel1-x86_64-arm-none-eabi arm_gcc_none_eabi

ENV PATH=/home/gcc-arm/arm_gcc_none_eabi/bin:$PATH
