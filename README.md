# ROS2-DOCKER_EXAMPLE
This is just a minimal example showing how to run ROS2 Foxy on Docker Container with osrf/ros:foxy-desktop as base image. 

The docker-compose.yaml here will run 2 services: turtlesim_node and turtle_teleop_key

If you want to use ubuntu:20.04 as base image, you may refer to [this repo](https://github.com/tka-andrew/ros2-ubuntu-docker-example).

## RUNNING ON DOCKER CONTAINER

### To run with docker run
1. Run a container and run turtlesim_node
    ```
    ./dockerRun.sh
    ros2 run turtlesim turtlesim_node
    ```
2. Open a new terminal, then run another container to run turtle_teleop
    ```
    ./dockerRun.sh
    ros2 run turtlesim turtle_teleop
    ```

### To run with docker-compose
1. Run both turtlesim_node and turtle_teleop_key services
    ```
    ./dockerComposeUp.sh
    ```
2. Open another terminal and attach to the turtle_teleop service to use the keyboard teleop
    ```
    sudo docker attach teleop_key
    ```
3. You need to docker-compose down after using it
    ```
    sudo docker-compose down
    ```
