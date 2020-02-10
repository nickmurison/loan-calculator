#!/bin/sh

# A docker image entrypoint for gathering coverage data
set -e
rm -rf build/security
mkdir -p build/security
pytest --ignore=integration_tests --capture=no --cov=src
coverage html -d build/coverage
