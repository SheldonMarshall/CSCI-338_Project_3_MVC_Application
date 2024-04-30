#!/bin/bash

# "set -e" makes the script exit on any error
set -e

# "set -x" makes the script print out each command before printing the output
set -x

#Run the poetry tests
poetry run black --check *.jsx
poetry run isort --check *.jsx
poetry run flake8 *.jsx

# If all we get to this point(We havn't exited due to a failed test) we have passed all tests
echo "All tests passed!"