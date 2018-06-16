#!/bin/bash

imagename="syneblock/quorum-maker"

branch=$(git branch | grep \* | cut -d ' ' -f2-)

if [ $branch = "development" ]; then
    tagname="2.0.2_Dev"
elif [ $branch = "master" ]; then
    tagname="2.0.2"
else
        tagname="2.0.2_"$branch
fi

if [ ! -z "$1" ]; then
    imagename=$1
fi

if [ ! -z "$2" ]; then
    tagname=$2
fi

dockername=$imagename":"$tagname
echo "Building image, "$dockername"..."


lib/install_quorum.sh
lib/build_nodemanager.sh
lib/build_ui.sh


docker build --no-cache -t $dockername .
