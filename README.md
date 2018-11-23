# Description
This script save "output" (*stdout* and *stderr*) of processed script to different files.
Useful for getting output in docker.
You can customize path for saving output, via ENVironment variables.
# Usage
Example of usage in Dockerfile:
```sh
# [CMD Hack]---[BEGIN]
RUN git clone --depth 1 --branch v1.1 https://github.com/natrix-fork/docker_entrypoint_extended .

# remove git from system if need
RUN apk del git

# do script executable
RUN chmod +x ./entrypoint__output_via_file.sh

ENTRYPOINT ["./entrypoint__output_via_file.sh", "python","script.py"]
# [CMD Hack]---[END]
```
## Processing git
### Alpine
#### Install
```sh 
RUN apk add --no-cache git
```
#### Remove
```sh 
RUN apk del git
```
### Debian
#### Install
```sh 
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        git 
```
#### Remove
```sh 
RUN apt-get remove -y git \
    && rm -rf /var/lib/apt/lists/*
```
P.S.: command note. This for downloading special version and only it.
```sh
git clone --depth 1 --branch $TAG $REPOSITORY_LINK .
```
