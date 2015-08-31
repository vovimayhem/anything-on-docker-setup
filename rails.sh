#! /bin/bash

DIR_ON_HOST=${PWD}
APP_NAME=${PWD##*/}

# Install rails and check if the folder name does not collide with anything rails:
docker run --rm -v $DIR_ON_HOST:/app vovimayhem/app-dev:mri-2.2.3 sh -c "rails --version || gem install rails --no-rdoc --no-ri" \
&& docker run --rm -v $DIR_ON_HOST:/app vovimayhem/app-dev:mri-2.2.3 rails new . "$@"
