#!/bin/bash

# "set -e" makes the script exit on any error
set -e

# "set -x" makes the script print out each command before printing the output
set -x

curl http://127.0.0.1:8000/api/v1/hello

#Run the poetry tests
poetry run black --check *.py
poetry run isort --check *.py
poetry run flake8 *.py

# If all we get to this point(We havn't exited due to a failed test) we have passed all tests
echo "All tests passed!"