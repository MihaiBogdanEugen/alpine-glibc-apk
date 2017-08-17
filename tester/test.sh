#!/usr/bin/env bash

set -e
cp /home/abuild/*.pub /etc/apk/keys/
apk update
exec sh