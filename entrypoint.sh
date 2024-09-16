#!/usr/bin/env bash

$json=$(exec docker run -e REPO_TOKEN -e LICENCE_KEY -e USER_TOKEN -e PROJECT_URL ghcr.io/violinist-dev/update-check-runner:$1-multi-composer-$2)
echo 'json<<EOF' >> $GITHUB_OUTPUT
echo $json >> $GITHUB_OUTPUT
echo 'EOF' >> $GITHUB_OUTPUT
