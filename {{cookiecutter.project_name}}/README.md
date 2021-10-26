# {{cookiecutter.project_name}}
{{cookiecutter.description}}
_________________

[![PyPI version](https://badge.fury.io/py/{{cookiecutter.project_name}}.svg)](http://badge.fury.io/py/{{cookiecutter.project_name}})
[![Test Status](https://github.com/{{cookiecutter.github_org}}/{{cookiecutter.project_name}}/workflows/Test/badge.svg?branch=develop)](https://github.com/{{cookiecutter.github_org}}/{{cookiecutter.project_name}}/actions?query=workflow%3ATest)
[![Lint Status](https://github.com/{{cookiecutter.github_org}}/{{cookiecutter.project_name}}/workflows/Lint/badge.svg?branch=develop)](https://github.com/{{cookiecutter.github_org}}/{{cookiecutter.project_name}}/actions?query=workflow%3ALint)
[![codecov](https://codecov.io/gh/{{cookiecutter.github_org}}/{{cookiecutter.project_name}}/branch/main/graph/badge.svg)](https://codecov.io/gh/{{cookiecutter.github_org}}/{{cookiecutter.project_name}})
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Imports: isort](https://img.shields.io/badge/%20imports-isort-%231674b1?style=flat&labelColor=ef8336)](https://timothycrosley.github.io/isort/)
_________________

[Read Latest Documentation](https://{{cookiecutter.github_org}}.github.io/{{cookiecutter.project_name}}/) - [Browse GitHub Code Repository](https://github.com/{{cookiecutter.github_org}}/{{cookiecutter.project_name}}/)
_________________

## Development

### Installing python dependencies
```shell
poetry install
```

### Running Tests
```shell
pytest .
```

## Formatting Code
```shell
bash .github/format.sh
```