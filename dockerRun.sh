# REFERENCE: https://jerin-electronics.medium.com/docker-now-ep1-python-opencv-in-docker-1dda564672c3

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

sudo docker run -it --rm -e DISPLAY=$DISPLAY -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH \
                -e XAUTHORITY=$XAUTH -t osrf/ros:foxy-desktop
