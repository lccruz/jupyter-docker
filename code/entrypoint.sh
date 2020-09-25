#!/bin/bash

set -e

echo "> Executing Jupter"

if [ "$1" = "jupyter" ]; then
    jupyter notebook --ip 0.0.0.0 --port 4000 --allow-root
fi