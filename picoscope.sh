#!/bin/bash

xhost +

docker run --privileged \
	--env=DISPLAY \
	--user=$(id -u):$(id -g) \
	-v /dev:/dev \
	-v /sys:/sys \
	-v /tmp/.X11-unix/:/tmp/.X11-unix:rw \
	-v ~/.local:/.local \
	--name picoscope \
	--net=host \
	--rm \
	-ti \
	picoscope
