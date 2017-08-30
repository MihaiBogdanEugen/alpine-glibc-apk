#!/bin/sh

set -e
sudo chown packager:packager ~/.abuild/
abuild-keygen -a -i