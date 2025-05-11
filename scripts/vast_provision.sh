#!/bin/bash

set -eo pipefail
cd /workspace/

git clone https://github.com/mkbehr/SAELens.git -b crosscoder-experiment
cd SAELens
python3.10 -m venv env
. env/bin/activate
pip install poetry
poetry lock
poetry install
pip install vastai
