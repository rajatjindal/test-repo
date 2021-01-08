#!/bin/bash

UI="ui"
for file in $(git diff branch1..master --name-only); do
    echo $file;
    if [[ $file == ${UI}* ]]; then
        echo "ui change"
    fi
done