#!/bin/bash

echo "리눅스가 재미있나요? (yes / no)"

read answer

case $answer in
    [yY] | [yY][eE][sS])          
        echo "yes"
        ;;
    [nN]* )             
        echo "no"
        ;;
    *)                        
        echo "yes 혹은 no로만 응답해 주세요."
        ;;
esac

