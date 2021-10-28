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
4) Create a cookiecutter repository
   ```shell
   cruft create https://github.com/urbanmachine/cookiecutter-python/
   ```
5) Copy the generated files into the project directory and track them on git
6) Double check everything is up-to-date by running `cruft check`
7) Merge `template` into the main branch of the repository. 

   You may need to use:
   ```shell
   git merge --allow-unrelated-histories
   ```
8) Delete the `template` branch
   
# Updating a template on an existsing project 
1) Run `cruft update --allow-untracked-files` and follow the prompts.
2) Resolve merge conflicts

# Adding Codecov Support
This process requires being an Admin on the github org.
1) Go to [Codecov][https://about.codecov.io/sign-up/] and sign in with your Github.
2) Go to the repository you wish to add, and select 'Activate'. 
3) Go to https://github.com/UrbanMachine/PROJECT_NAME/settings/secrets/actions, and create a new secret called `CODECOV_TOKEN`. Paste the token that is given under the "Overview" tab of https://app.codecov.io/gh/UrbanMachine/PROJECT_NAME/ as the value.
4) You should now be able to see code coverage under codecov!