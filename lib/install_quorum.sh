#!/bin/bash

source qm.variables
source lib/common.sh 

echo $CYAN"Building Quorum, "$quorum_version"..."$COLOR_END

rm -rf quorum

docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git alpine/git clone https://github.com/jpmorganchase/quorum.git
docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git -w /git/quorum alpine/git checkout $quorum_version
docker run -it --rm -v $(pwd)/quorum:/quorum -w /quorum golang:1.7.6 /bin/bash -c "apt-get update && apt-get install -y build-essential cmake git libgmp3-dev libprocps3-dev python-markdown libboost-all-dev libssl-dev && make all"

## Change the owneship of quorum directory
chownDir 'quorum'

echo $CYAN"Building Quorum, "$quorum_version" Completed."$COLOR_END
