# docker-arm-none
A Docker Image for compiling arm-none-eabi Applications with gcc

This image contains all necessary stuff for compiling Bare Metal Applications with arm-none-eabi-gcc

gcc and cmake are on path

to build the image
 - install docker
 - clone repository
 - run from shell: ./buildCommand.sh
	- with -l yout can set your label
 - run from shell: ./runContainer.sh
	- with -n you can set a name for container
	- set your -i if you changed to a different image name
