FROM ubuntu:latest
LABEL version="1.0.0"
LABEL author="hacper"

RUN apt update && apt install make unzip curl -y &&  mkdir /preboot && mkdir /preboot/src
COPY gcc-arm-none-eabi-9-2019-q4-major.zip /preboot
COPY build_CRANEL.sh /preboot
COPY build_CRANEM.sh /preboot
WORKDIR /preboot
RUN unzip gcc-arm-none-eabi-9-2019-q4-major.zip && rm gcc-arm-none-eabi-9-2019-q4-major.zip
ENV PATH=$PATH:/preboot/gcc-arm-none-eabi-9-2019-q4-major/bin
