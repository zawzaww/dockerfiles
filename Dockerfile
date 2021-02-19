# Docker Container Base Image
FROM ubuntu:latest

RUN apt-get update -y && \
    apt-get upgrade -y

RUN apt-get install -y wget gnupg git \
    build-essential bison ccache \
    gcc make binutils util-linux

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
RUN echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal main" | tee /etc/apt/sources.list.d/clang-llvm.list

RUN apt-get -y update && \
    apt-get install -y clang

RUN apt-get autoremove -y && \
    apt-get -y autoclean
