# Description
This script save "output" (*stdout* and *stderr*) of processed script to different files.
Useful for getting output in docker.
You can customize path for saving output, via ENVironment variables.
# Usage
Example of usage in Dockerfile:
```sh
# [CMD Hack]---[BEGIN]
RUN git clone --depth 1 --branch v1.1 https://github.com/natrix-fork/docker_entrypoint_extended .
# do script executable
RUN chmod +x ./entrypoint__output_via_file.sh

ENTRYPOINT ["./entrypoint__output_via_file.sh", "python","script.py"]
# [CMD Hack]---[END]
```
P.S.: command note. This for downloading special version and only it.
```sh
git clone --depth 1 --branch $TAG $REPOSITORY_LINK .
```
