#!/usr/bin/env bash

exec docker run -e REPO_TOKEN -e LICENCE_KEY -e USER_TOKEN -e PROJECT_URL ghcr.io/violinist-dev/update-check-runner:$1-multi-composer-$2
