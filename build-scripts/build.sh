#!/bin/bash

## Parse input ##
NAME1=$1
NAME2=$2
BASE=$3
BG=$4
DISTRO=$5
DOCKERFILE=$6

## Build/Push image to cache endpoint by pipeline ID ##
docker build \
  -t kasmcustom/core-${NAME1}-${NAME2}:develop \
  --build-arg BASE_IMAGE="${BASE}" \
  --build-arg DISTRO="${DISTRO}" \
  --build-arg BG_IMG="${BG}" \
  -f ${DOCKERFILE} .
