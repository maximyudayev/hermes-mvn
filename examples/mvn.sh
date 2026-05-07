#!/bin/sh
source .venv/bin/activate
hermes-cli -o ./data --config_file ./examples/mvn.yml --experiment project=Test type=Mvn trial=0
