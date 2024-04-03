#!/usr/bin/env bash

docker buildx create --use --name mailhog_builder

docker buildx build \
        -t banderson/mailhog \
        --platform=linux/arm64,linux/amd64 \
        --push .

docker buildx rm mailhog_builder
