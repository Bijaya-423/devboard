#!/bin/bash

echo "hello aws" > helloaws.txt

echo "hello azure" > helloazure.txt






echo "hello gcp" > hellogcp.txt
echo "hello devops" > hellodevops.txt
if [ -f "helloaws.txt" ]; then
    echo "File helloaws.txt exists."
else
    echo "File helloaws.txt does not exist."
fi

if [ -f "helloazure.txt" ]; then
    echo "File helloazure.txt exists."
else
    echo "File helloazure.txt does not exist."
fi

if [ -f "hellogcp.txt" ]; then
    echo "File hellogcp.txt exists."
else
    echo "File hellogcp.txt does not exist."
fi

echo "All files have been checked."





























