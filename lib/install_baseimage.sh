#!/bin/bash

apt-get update

apt-get install -y build-essential
apt-get install -y cmake
apt-get install -y git
apt-get install -y libgmp3-dev
apt-get install -y libprocps4-dev
apt-get install -y python-markdown
apt-get install -y libboost-all-dev libssl-dev libdb-dev libleveldb-dev libsodium-dev zlib1g-dev libtinfo-dev libgmp3-dev
apt-get install -y git
apt-get install -y curl
apt-get install -y wget

apt-get install -y software-properties-common python-software-properties
apt-get install -y jq
apt-get install -y psmisc
apt-get install -y iputils-ping

add-apt-repository -y ppa:ethereum/ethereum
apt-get update
apt-get install -y solc

apt-get install -y bsdmainutils
apt-get install -y openjdk-8-jdk
apt-get install -y maven
apt-get install -y net-tools