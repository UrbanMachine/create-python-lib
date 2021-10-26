# cookiecutter-python

A simple template for my own personal Python3.6+ projects utilizing black + isort + flake8 + poetry + mypy + bandit + bugbear + more goodness. Best used with [cruft](https://timothycrosley.github.io/cruft/)

# Adding to an existing project

1) Create an empty branch called `template`
   ```shell
   git checkout --orphan template 
   ```
2) Remove all staged files from this branch
   ```shell
   git reset --hard 
   ```
3) Create a cookiecutter repository
   ```shell
   cruft create https://github.com/urbanmachine/cookiecutter-python/
   ```
4) Copy the generated files into the project directory and add them to git
5) Merge `template` into the main branch of the repository. Don't delete the `template` branch, so that it can be used in the future for future template changes and merges.