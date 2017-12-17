# wradlib/wradlib-docker:min_py27

## What

- wradlib/wradlib-docker:base based docker image
    - x11 stack
    - su-exec
    - miniconda3 python3.6
- dedicated `wradlib` environment with python2.7
- wradlib run dependencies

## Build

```shell
docker build -t min_py27 .
```

## Use

```shell
$ docker run -it --rm -v /host/path/to/wradlib-data:/home/wradlib-data -e LOCAL_USER_ID=$UID -e WRADLIB_DATA=/home/wradlib-data wradlib/wradlib-docker:min_py27 /bin/bash
```

This command starts a docker container with the following presets:

- sets the container LOCAL_USER to your current $UID which grants you write access to the mounted folders
- mounts the host `/host/path/to/wradlib-data` to the `/home/wradlib-data` folder inside the container
- set the `WRADLIB_DATA` environment variable pointing to the specified folder
- start a bash-shell
- removes the container after closing

