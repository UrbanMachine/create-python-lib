# cookiecutter-python-template

A simple template for Urban Machine Python3.8+ projects utilizing black + isort + flake8 + poetry + mypy + bandit + bugbear + more goodness. Best used with [cruft](https://timothycrosley.github.io/cruft/)

# Adding template to an existing project

1) Create an empty branch called `template`
   ```shell
   git checkout --orphan template 
   ```
2) Remove all staged files from this branch
   ```shell
   git reset --hard 
   ```
3) Ensure you have `cruft` installed. In a virtual environment, run
   ```shell
   pip install cruft
   ```
5) Create a cookiecutter repository
   ```shell
   cruft create https://github.com/urbanmachine/cookiecutter-python/
   ```
6) Copy the generated files into the project directory and track them on git
7) Double check everything is up-to-date by running `cruft check`
8) Merge `template` into the main branch of the repository. Don't delete the `template` branch, so that it can be used in the future for future template changes and merges.

# Updating a template on an existsing project
1) Go to the projects `template` branch 
2) Run `cruft update --allow-untracked-files` and follow the prompts.
3) Validate the diffs merged correctly
4) Merge `template` into the main branch of the repository