# Linux Kernel Docker Image

## Automated Docker Image for Compiling Linux Kernel with Clang/LLVM, Booting and Running Kernel Image in QEMU

Docker Hub: [https://hub.docker.com/r/zawzaww/linux-kernel](https://hub.docker.com/r/zawzaww/linux-kernel)

Personally, I'm using this Docker contianer image for compiling and building Linux stable kernel tree. Docker Container base image `base-image/Dockerfile` contains Clang/LLVM compiler toolchian and required build tools packages as prebuilt Docker container image based on Debian GNU/Linux image for compiling Linux kernel with Clang/LLVM toolchain. Main Dockerfile `$PROJECT_ROOT/Dockerfile` is automated Docker image for compiling Linux kernel, booting and running kernel image in QEMU emulator and virtualizer.


### Project Structure

```base-image/Dockerfile```
> Docker base image contains Clang/LLVM toolchain and build tools for compiling Linux kernel.

```Dockerfile```
> Automated Docker image for compiling Linux kernel with Clang/LLVM, booting and running kernel image in QEMU emulator and virtalizer.


### Download from Docker Hub and Run Docker Image

You can pull this Docker image with Docker CLI:

```bash
docker pull zawzaww/linux-kernel:stable
```

Run Docker image:
```bash
docker run -it --rm zawzaww/linux-kernel:stable
```


### Build with Dockerfile and Run Docker Image Locally

If you want to build Docker image with Dockerfile locally,

Git clone this repository:

```bash
git clone https://github.com/zawzaww/linux-kernel-docker.git linux-kernel-docker
```

```bash
cd linux-kernel-docker
```

Build Docker image with Dockerfile locally:

```bash
docker build -t linux-kernel:stable .
```

Run Built Docker image:
```
docker run -it --rm linux-kernel:stable
```

DONE
