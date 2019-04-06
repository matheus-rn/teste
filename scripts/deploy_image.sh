#!/bin/bash

set -ev

echo "Deployment init"

docker build . -t maismonitoria/frontend:latest
docker login -p $DOCKERPASSWORD -u $DOCKERLOGIN
docker push maismonitoria/frontend:latest  
