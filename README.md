# dockerfile-repository

### this repository is a collection of Dockerfile for me to test or executing as a base image

### this repository contains following type of image :
 - 1. base image : usually import as a base image, such as a CentOS with JDK
 - 2. alpine image : choose alpine as base image, this kind of image will be very tiny
 - 3. example image : usually contains a springboot demo or something like that, for testing or demo
 
if you got an dis full error in container, try following command

```bash
docker system prune --volumes -f
```