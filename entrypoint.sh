#!/usr/bin/env bash

echo 'json<<MY_SUPER_SPECIAL_DELIMETER_I_MEAN_WHO_KNOWS_WHATS_IN_PACKAGE_NAMES' >> $GITHUB_OUTPUT

export GIT_AUTHOR_NAME="${GIT_AUTHOR_NAME:-violinist-bot}"
export GIT_AUTHOR_EMAIL="${GIT_AUTHOR_EMAIL:-violinistdevio@gmail.com}"
export GIT_COMMITTER_NAME="${GIT_COMMITTER_NAME:-violinist-bot}"
export GIT_COMMITTER_EMAIL="${GIT_COMMITTER_EMAIL:-violinistdevio@gmail.com}"

echo "$GIT_AUTHOR_NAME and $GIT_AUTHOR_EMAIL and $GIT_COMMITTER_NAME and $GIT_COMMITTER_EMAIL"

env | grep GIT

docker run -e GIT_AUTHOR_NAME -e GIT_AUTHOR_EMAIL -e GIT_COMMITTER_NAME -e GIT_COMMITTER_EMAIL -e ALTERNATE_COMPOSER_PATH -e REPO_TOKEN -e LICENCE_KEY -e USER_TOKEN -e PROJECT_URL ghcr.io/violinist-dev/update-check-runner:$1-multi-composer-$2 env | grep GIT
#>> $GITHUB_OUTPUT
echo -e "\n" >> $GITHUB_OUTPUT
echo 'MY_SUPER_SPECIAL_DELIMETER_I_MEAN_WHO_KNOWS_WHATS_IN_PACKAGE_NAMES' >> $GITHUB_OUTPUT
