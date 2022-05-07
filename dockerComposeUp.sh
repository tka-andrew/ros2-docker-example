XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
# REFERENCE: https://stackoverflow.com/questions/71245228/running-x-server-using-docker
# This is needed to create the xauth file
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

# REFERENCE: https://stackoverflow.com/questions/53106678/docker-compose-up-and-user-inputs-on-stdin
# This is not enough to use the turtle_teleop, we need to attach to the turtle_teleop service in another terminal
sudo docker-compose up --remove-orphan