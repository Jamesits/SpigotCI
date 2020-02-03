#!/bin/bash
set -x

REVISION=${REVISION:-"latest"}

git config --global --unset core.autocrlf
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar BuildTools.jar --rev "$REVISION" --output-dir "${BUILD_ARTIFACTSTAGINGDIRECTORY}"
ls -alh "${BUILD_ARTIFACTSTAGINGDIRECTORY}"
