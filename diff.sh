#!/bin/bash

UI="ui"
for file in $(git diff b1..master --name-only); do
    if [[ $file == ${UI}* ]]; then
        echo "ui change"
    fi
done