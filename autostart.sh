#!/bin/bash

DOCKER="/usr/bin/docker"
 TRAEFIK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#TRAEFIK_DIR="/home/sbkubric/reverse_proxy"

echo ${TRAEFIK_DIR}

# Create global gateway network, if not exists
${DOCKER} network create --driver bridge --attachable --internal=false gateway || true

cd ${TRAEFIK_DIR}

${DOCKER} compose up -d --force-recreate
