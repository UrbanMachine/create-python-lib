# create-python-lib

A standardized template for Urban Machine Python3.10+ projects.

## Why Use This Template?

This template helps streamline development by ensuring that every new Python project starts with the same setup, tools, and best practices. By using *cruft*, we link the project to the template, allowing us to apply template updates as our standards evolve, without disrupting existing codebases. It’s a fast, reliable way to maintain high-quality, secure, and consistent Python projects across the organization.

### Features

- **Python 3.10+ Compatibility**: Pre-configured environment for modern Python projects.
- **Automated Code Formatting**: Uses *black* and *isort* to keep code style consistent.
- **Comprehensive Linting**: *ruff* enforces style, security, and quality rules from multiple sources.
- **Static Type Checking**: *mypy* in strict mode to catch type errors early.
- **Testing and Code Coverage**: *pytest* and *pytest-cov* for testing with coverage tracking.
- **Security Scanning**: *bandit* checks for common security vulnerabilities.
- **Dependency Management**: *poetry* handles dependencies and virtual environments.
- **Template Sync with Cruft**: Stay up-to-date with template improvements across all projects.
- **CI/CD Ready**: GitHub Actions workflows for linting, testing, and optional Codecov integration.


## Quick Start Guide

### Adding the Template to an Existing Project

1. **Create a `template` branch:**
   ```shell
   git checkout --orphan template 
   ```
2. Clear files in this branch
   ```shell
   git reset --hard 
   ```
3. Install Cruft (if not already installed):
   ```shell
   pip install cruft
   ```
4. Initialize the template
   ```shell
   cruft create git@github.com:UrbanMachine/create-python-lib.git
   ```
5. Add the generated files into the project directory and commit them to git.
6. Check that everything is synced with the template repository
   ```shell
   cruft check
   ```
7. Merge `template` into your `main` branch:

   You may need to use:
   ```shell
   git merge --allow-unrelated-histories
   ```
8. Delete the `template` branch
   
### Updating a Template on an Existing Project 
To pull in the latest template changes:
1.Run the following:
   ```shell
   cruft update --allow-untracked-files
   ```
2. Follow the prompts and resolve any merge conflicts that arise.

## Post Set-Up Guide
### Adding Codecov Support
This process requires being an Admin on the github org.
1. Sign in to [Codecov](https://about.codecov.io/sign-up/) with your Github account.
2. Under your repository in Codecov, select "Activate".
3. Get a codecov API token. Settings can be found under:
   https://app.codecov.io/gh/UrbanMachine/PROJECT_NAME/
4. Add a secret named `CODECOV_TOKEN` to your Github repositories secrets. Settings can be found under: 
   https://github.com/UrbanMachine/PROJECT_NAME/settings/secrets/actions
6. You should now be able to see code coverage under codecov!

### Fixing the `lint` Github Action
`cruft` requires access to the upstream template repository for `lint` to function. If not
fixed, the lint action will fail because because `cruft` is unable to clone the template repo. 
Set up SSH keys as follows:

1. Generate an SSH Key
   ```shell
   ssh-keygen
   ```
2. Add the private key (`id_rsa`) to your Github repository's sectrets under the name `SSH_KEY`. Settings can be found under: 
   https://github.com/UrbanMachine/PROJECT_NAME/settings/secrets/actions

3. Add a public key (`id_rsa.pub`) to your repository's deploy keys on github. Settings can be found under: 
   https://github.com/UrbanMachine/PROJECT_NAME/settings/keys
