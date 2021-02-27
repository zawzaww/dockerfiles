# Linux Kernel Docker Image

## Automated Docker Image for Compiling Linux Kernel with Clang/LLVM, Booting and Running Kernel Image in QEMU

Docker Hub: [https://hub.docker.com/r/zawzaww/linux-kernel](https://hub.docker.com/r/zawzaww/linux-kernel)

```bash
[    0.000000] Linux version 5.11.0+ (khacker@a796d84e4e07) (Debian clang version 13.0.0-++20210223115113+7dc98adbb0e2-1~exp1~20210223105815.1330, GNU ld (GNU Binutils for Debian) 2.31.1) #1 SMP Sat Feb 27 07:51
[    0.000000] Command line: root=/dev/zero console=ttyS0
[    0.000000] x86/fpu: x87 FPU will use FXSAVE
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000000f0000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x0000000007fdffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000007fe0000-0x0000000007ffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fffc0000-0x00000000ffffffff] reserved
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] SMBIOS 2.8 present.
[    0.000000] DMI: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-1 04/01/2014
[    0.000000] tsc: Fast TSC calibration using PIT
[    0.000000] tsc: Detected 1799.969 MHz processor
[    0.023439] last_pfn = 0x7fe0 max_arch_pfn = 0x400000000
[    0.025353] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT
[    0.052291] found SMP MP-table at [mem 0x000f5aa0-0x000f5aaf]
[    0.061516] check: Scanning 1 areas for low memory corruption
[    0.068691] ACPI: Early table checksum verification disabled
[    0.069182] ACPI: RSDP 0x00000000000F58D0 000014 (v00 BOCHS )
[    0.069674] ACPI: RSDT 0x0000000007FE156F 000030 (v01 BOCHS  BXPCRSDT 00000001 BXPC 00000001)
[    0.070660] ACPI: FACP 0x0000000007FE144B 000074 (v01 BOCHS  BXPCFACP 00000001 BXPC 00000001)
[    0.071663] ACPI: DSDT 0x0000000007FE0040 00140B (v01 BOCHS  BXPCDSDT 00000001 BXPC 00000001)
[    0.071919] ACPI: FACS 0x0000000007FE0000 000040
[    0.072070] ACPI: APIC 0x0000000007FE14BF 000078 (v01 BOCHS  BXPCAPIC 00000001 BXPC 00000001)
[    0.072153] ACPI: HPET 0x0000000007FE1537 000038 (v01 BOCHS  BXPCHPET 00000001 BXPC 00000001)
[    0.077917] No NUMA configuration found
[    0.077995] Faking a node at [mem 0x0000000000000000-0x0000000007fdffff]
[    0.079093] NODE_DATA(0) allocated [mem 0x07fdc000-0x07fdffff]
[    0.082289] Zone ranges:
[    0.082326]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.082542]   DMA32    [mem 0x0000000001000000-0x0000000007fdffff]
[    0.082576]   Normal   empty
[    0.082618] Movable zone start for each node
[    0.082669] Early memory node ranges
[    0.082723]   node   0: [mem 0x0000000000001000-0x000000000009efff]
[    0.082989]   node   0: [mem 0x0000000000100000-0x0000000007fdffff]
[    0.088362] Zeroed struct page in unavailable ranges: 130 pages
[    0.088815] Initmem setup node 0 [mem 0x0000000000001000-0x0000000007fdffff]
[    0.095595] ACPI: PM-Timer IO Port: 0x608
[    0.096292] ACPI: LAPIC_NMI (acpi_id[0xff] dfl dfl lint[0x1])
[    0.096850] IOAPIC[0]: apic_id 0, version 32, address 0xfec00000, GSI 0-23
...

```


Personally, I'm using this Docker contianer image for compiling and building Linux kernel stable tree. Docker Container base image `base-image/Dockerfile` contains Clang/LLVM compiler toolchian and required build tools packages as prebuilt Docker container image based on Debian GNU/Linux image for compiling Linux kernel with Clang/LLVM toolchain. Main Dockerfile `$PROJECT_ROOT/Dockerfile` is automated Docker image for compiling Linux kernel, booting and running kernel image in QEMU emulator and virtualizer.


### Project Structure

```base-image/Dockerfile```

- Docker base image contains Clang/LLVM toolchain and build tools for compiling Linux kernel.

```Dockerfile```

- Automated Docker image for compiling Linux kernel with Clang/LLVM, booting and running kernel image in QEMU emulator and virtalizer.


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
