FROM zawzaww/linux:latest

ENV KERNEL_USER=zawzaw \
    KERNEL_WORKDIR=/linux

RUN git clone --depth=1 https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git linux
WORKDIR ${KERNEL_WORKDIR}

RUN useradd --create-home ${KERNEL_USER}

RUN chown -R ${KERNEL_USER}:${KERNEL_USER} ${KERNEL_WORKDIR}
USER ${KERNEL_USER}

RUN clang --version && ccache --version
RUN export CCACHE_DIR="/home/zawzaw/.ccache" && ccache -M 16G

CMD make clean && make mrproper && \
    make CC=clang x86_64_defconfig && \
    make CC="ccache clang" -j$(nproc --all)
