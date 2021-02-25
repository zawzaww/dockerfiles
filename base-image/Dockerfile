FROM debian:stable

ENV DEBIAN_FRONTEND=noninteractive \
    KERNEL_REPOSITORY=linux

RUN apt-get update -y && \
    apt-get upgrade -y

RUN apt-get install -y \
    wget gnupg gnupg-utils git build-essential \
    bison make binutils \
    bc flex qemu qemu-system-x86 \
    libelf-dev libssl-dev

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
RUN echo "deb http://apt.llvm.org/buster/ llvm-toolchain-buster main" | tee /etc/apt/sources.list.d/clang-llvm.list

RUN apt-get -y update && \
    apt-get install -y clang

RUN apt-get autoremove -y && \
    apt-get -y autoclean

RUN git clone --depth=1 https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git ${KERNEL_REPOSITORY}

LABEL author="Zaw Zaw <zaw.z.thein@frontiir.net"
