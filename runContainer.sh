#! /bin/bash

CONTAINER_NAME="cc3200_sdk"
IMAGE_NAME="arm-gcc-none"

while getopts n:h flag
do
    case "${flag}" in
        n) CONTAINER_NAME=${OPTARG}
            echo "Overriding default --name to: ${CONTAINER_NAME}"
            ;;
        i) IMAGE_NAME=${OPTARG}
            echo "Overriding default IMAGE to: ${IMAGE_NAME}"
            ;;
            
        h) echo "Builds an image with a default LABEL argument"
            echo "Arguments: "
            echo "-n overwrites the container name"
            echo "-i overwrites the image name"
            exit 0;;  
    esac
done

docker run --rm -it --name ${CONTAINER_NAME} ${IMAGE_NAME} "/usr/bin/bash"