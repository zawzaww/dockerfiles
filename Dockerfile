FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get install -y wget gnupg git build-essential bison ccache

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
RUN echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal main" | tee /etc/apt/sources.list.d/clang-llvm.list

RUN apt-get -y update
RUN apt-get install -y clang

RUN apt-get -y autoremove
RUN apt-get -y autoclean
