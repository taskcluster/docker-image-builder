#!/bin/sh -e

curl -L -o  /home/input-context.tar "$IMAGE_CONTEXT_URL";

cat /home/input-context.tar | docker build -t result --force-rm --no-cache -;

docker save -o /home/output-image.tar result;
