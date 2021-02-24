# Linux Kernel Docker Image

## Customized Docker Image for Compiling Linux with Clang and Booting Linux in QEMU

Docker Hub: [https://hub.docker.com/r/zawzaww/linux](https://hub.docker.com/r/zawzaww/linux)

Personally, I'm using this Docker contianer image for compiling and building Linux stable kernel tree. Installed minimal required packages and Clang C compiler/toolchain as prebuilt container image based on ubuntu linux docker image for compiling Linux kernel with Clang/LLVM.

### Download Prebuilt Docker Image

You can pull this Docker image with Docker CLI:

```bash
docker pull zawzaww/linux:latest
```

### Building Docker Image with Dockerfile

If you want to build Docker image with Dockerfile locally,

Git clone this repository:

```bash
git clone https://github.com/zawzaww/linux-kernel-docker.git linux-kernel-docker
```

Build Docker image with Dockerfile locally:

```bash
cd linux-kernel-docker
```

```bash
docker build -t linux .
```
