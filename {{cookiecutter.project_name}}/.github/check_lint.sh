#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run mypy --ignore-missing-imports {{cookiecutter.project_name}}/ tests/
poetry run isort --check --diff {{cookiecutter.project_name}}/ tests/
poetry run black --check {{cookiecutter.project_name}}/ tests/
poetry run flake8 {{cookiecutter.project_name}}/ tests/ --darglint-ignore-regex '^test_.*'
poetry run bandit -r --severity medium high {{cookiecutter.project_name}}/ tests/
poetry run vulture --min-confidence 100 {{cookiecutter.project_name}}/ tests/
echo "Lint successful!"