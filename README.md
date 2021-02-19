# Linux Clang Docker Contianer Image

## Customized Docker Image for Compiling Linux Kernel with Clang/LLVM

Docker Hub: [https://hub.docker.com/r/zawzaww/linux](https://hub.docker.com/r/zawzaww/linux)

Personally, I'm using this Docker contianer image for compiling and building Linux stable kernel tree. Installed minimal required packages and Clang C compiler/toolchain as prebuilt container image based on ubuntu linux docker image for compiling Linux kernel with Clang/LLVM.

### Download Built Docker Image

You can pull this Docker image with Docker CLI:

```bash
docker pull zawzaww/linux:latest
```

### Building Docker Image with Dockerfile

If you want to build Docker image with Dockerfile locally,

Git clone this repository with SSH:

```bash
git clone git@github.com:zawzaww/linux-clang-img.git
```

(OR)

Git clone this repository with HTTPS:

```bash
git clone https://github.com/zawzaww/linux-clang-img.git
```

Build Docker image with Dockerfile locally:

```bash
cd linux-clang-img
```

```bash
docker build -t linux .
```
