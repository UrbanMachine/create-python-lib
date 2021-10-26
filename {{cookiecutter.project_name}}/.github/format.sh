#!/bin/bash
set -euxo pipefail

poetry run isort --diff {{cookiecutter.project_name}}/ tests/
poetry run black {{cookiecutter.project_name}}/ tests/
