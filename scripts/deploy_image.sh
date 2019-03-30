
#!/bin/bash

set -ev

echo "Deployment init"

echo "$horadahora" | docker login -u "$user" --password-stdin
docker tag frontend horadahora/teste:latest
docker push horadahora/teste:latest