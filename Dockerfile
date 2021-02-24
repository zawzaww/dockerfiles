# Docker Container Base Image.
FROM zawzaww/linux:latest

# Setup environment variables.
ENV KERNEL_USER=zawzaw \
    KERNEL_COMPILER=clang \
    KERNEL_BUILDTOOL=make \
    KERNEL_REPOSITORY=linux \
    KERNEL_WORKDIR=/linux

# Download Linux kernel stable source code and Create Linux workdir.
RUN git clone --depth=1 https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git ${KERNEL_REPOSITORY}
WORKDIR ${KERNEL_WORKDIR}

# Add a new user for Linux workdir.
RUN useradd --create-home ${KERNEL_USER}

# Change owner for Linux workdir.
RUN chown -R ${KERNEL_USER}:${KERNEL_USER} ${KERNEL_WORKDIR}
USER ${KERNEL_USER}

# Check Clang/LLVM compiler and Make version.
RUN ${KERNEL_COMPILER} --version && \
    ${KERNEL_BUILDTOOL} --version

# Make kernel configurations and Compile Linux kernel.
CMD make clean && make mrproper && \
    make CC=${KERNEL_COMPILER} x86_64_defconfig && \
    make CC=${KERNEL_COMPILER} -j$(nproc --all) && \
    qemu-system-x86_64 \
    -kernel arch/x86_64/boot/bzImage \
    -append "console=ttyS0" \
    -nographic \
    -serial mon:stdio
