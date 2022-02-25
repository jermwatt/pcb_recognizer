#!/bin/bash

# spin down services
docker-compose -f docker-compose-pcb-recognizer-dev.yml down

# spin down network
docker network rm pcb_recognizer_network_dev

# spin up new version of network
docker network create --attachable --driver=bridge --subnet=11.2.0.0/24 pcb_recognizer_network_dev
sleep 10

# spin up applications
docker-compose -f docker-compose-pcb-recognizer-dev.yml up -d --build
