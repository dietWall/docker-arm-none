#! /bin/bash

LABEL="arm-gcc-none"

while getopts l:h flag
do
    case "${flag}" in
        l) LABEL=${OPTARG}
            echo "Setting Label to: ${LABEL}";;

        f) echo "Builds an image with a default LABEL argument"
        echo "Arguments: "
        echo "-l overwrites the label";;
        
        
    esac
done

docker build . -t ${LABEL}