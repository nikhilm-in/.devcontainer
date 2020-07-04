# Devcontainer #

Devcontainer is a concept and a feature of VS Code which uses a container as a remote development environment. 

The entire remote development environment is defined as a `Dockerfile` or a `docker-compose.yml` along with a `devcontainer.json` under the `.devcontainer` directory in your git project and VS Code automatically recognizes it and volume mounts the project inside a container from the defined docker image.

Read more about using [devcontainers](https://code.visualstudio.com/docs/remote/containers) on VS Code here

## Advantages ##
* No further installation and setup needed other than the requirements shown below for anyone picking up the same project. 
* Development environment is isolated and immutable. Easier to work on projects with conflicting dependencies and libraries at the same time. Using devcontainer is also lighter than running any another form of isolation like virtual machines.
* The development environment is defined as code and checked in to the repo with the rest of infrastructure as code files.
* You can even define the dependant services in a compose file and use one of the service from it as your devcontainer.

## Requirements ##
* [Docker](https://www.docker.com/get-started)
* [VS Code](https://code.visualstudio.com/download) **Note**: You may even need docker compose
* [Remote development extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

## Usage ##
When creating a new project, git clone the specific branch that contains the language of your project using the command `git clone --single-branch --branch <branchname> git@bitbucket.org:wicked-ride/.devcontainer.git`

It will create a directory called .devcontainer with the relevant Dockerfile and devcontainer.json file. You can modify it to your use case by going through the [devcontainers quick start](https://code.visualstudio.com/docs/remote/containers) page or the [devcontainer advanced configuration](https://code.visualstudio.com/docs/remote/containers-advanced) page.

### Devcontainer templates for different languages ###
* [Java-8](https://bitbucket.org/wicked-ride/.devcontainer/src/java-8/): `git clone --single-branch --branch java-8 git@bitbucket.org:wicked-ride/.devcontainer.git`
* [python-3.8](https://bitbucket.org/wicked-ride/.devcontainer/src/python-3.8/): `git clone --single-branch --branch python-3.8 git@bitbucket.org:wicked-ride/.devcontainer.git`