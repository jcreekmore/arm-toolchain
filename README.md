# ARM toolchain in a Docker

ARM toolchain in a Docker container to have a build toolchain.

## Current version

- based on debian:jessie with build-essential
- gcc-arm-none-eabi: 4.8.3-10+11
- libnewlib-arm-none-eabi: 2.1.0+git20140818.1a8323b-2
- binutils-arm-none-eabi: 2.24.51.20140818-1+5

## Quick Start

```bash
docker run -v ${pwd}:/tmp jcreekmore/arm-toolchain COMMAND
```
