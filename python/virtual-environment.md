# Virtual Environments

Virtual environments allow you to have dependencies specific for a project in a way that it doesn't interfere with other projects or global system settings. 
For example, imagine you 2 projects A and B. Both of these require package P, but A needs version v1 and B needs version v2. So we create separate virtual environments for A(venv-A) and B(venv-B). In venv-A, P:v1 will be installed and in venv-B P:V2 will be installed. 

## What is pyenv, pipenv, virtualenv, venv, virtualenvwrapper? What's the difference between these?

### virtualenv
This is a third-party package that is used to create virtual environments. Can be installed using pip. 

```virtualenv venv```

This creates a directory venv in the project folder. This venv contains all the executables required to use the packages for the project. 

``` source venv/bin/activate ``` activates the virtual environment.

Usuall pip install can be used to install packages in this virtualenv. 

### pipenv
pipenv can be thought of as a dependency management system, helping resolve dependencies and conflics more easily. It can also give security details. In a project without pipenv, we use pip to install dependencies, possibly from a requirements.txt file. pipenv can be installed using pip.

With pipenv, we rely on something called a Pipfile. For example, if you were to execute

``` pipenv install requests ```

With this, pipenv would create the virtual environment (if not already present), install the package requests in the virtualenv, then create a Pipfile in the project directory, if not already present. If present, it will add the package to the file. It will also generate a Pipfile.lock. To activate this virtualenv ``` pipenv shell ``` can be used.

- Pipfile can be thought of as an equivalent to requirements.txt, where it lists the package dependencies of the project.
- Pipfile.lock contains the specific version details of a package as well as a hashed ids of the current package state. 

So pipenv, in essence combines pip and virtualenv. 

### venv
From Python3.3 onwards, venv is a standard library. ```python3 -m venv``` can be used. Is an alternative for virtualenv, either of the 2 should suffice for the project.

### virtualenvwrapper
Like the name suggests, this is a wrapper on top of virtualenv. If you have multiple environments created through virtualenv, some commands from virtualenvwrapper can come in handy to manage them easily, eg 

```mkvirtualenv project_folder``` This creates the project_folder folder inside ~/Envs.

```workon project_folder``` activates the virtualenv

### pyenv
Used to switch between python versions for different projects. 