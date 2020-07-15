# Devcontainer #

Devcontainer is a concept of using containers as remote development environment. It is a feature for VS Code. Unsure if other IDE support it. 

The entire remote development environment is defined as a `Dockerfile` or a `docker-compose.yml` along with a `devcontainer.json` file under the `.devcontainer` directory in a git project and VS Code automatically recognizes it and volume mounts the project inside a container from the defined docker image.

Read more about using [devcontainers](https://code.visualstudio.com/docs/remote/containers) on VS Code here

## Advantages ##
* No further installation and setup needed other than the requirements shown below for anyone picking up the same project. 
* Development environment is isolated and immutable. Easier to work on projects with conflicting dependencies and libraries at the same time. Using devcontainer is also lighter than running any another form of isolation like virtual machines.
* The development environment is defined as code and checked in to the repo with the rest of infrastructure as code files.
* Supports defining the dependant services in a compose file and use one of the service from it as the devcontainer.
* Same dependencies irrespective of the host OS. Just need to install VS Code and Docker which is available for all OS and architecture (VS Code ARM support in beta, Docker already works.)

## Requirements ##
* [Docker](https://www.docker.com/get-started) **Note**: docker compose may also be needed.
* [VS Code](https://code.visualstudio.com/download)
* [Remote development extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

## Usage ##
When creating a new project, git clone the specific branch that contains the language of the project using the command `git clone --single-branch --branch <branchname> git@bitbucket.org:wicked-ride/.devcontainer.git`

It will create a directory called .devcontainer with the relevant Dockerfile and devcontainer.json file. Modify it to the use case by going through the [devcontainers quick start](https://code.visualstudio.com/docs/remote/containers) page or the [devcontainer advanced configuration](https://code.visualstudio.com/docs/remote/containers-advanced) page.

### Devcontainer templates for different languages ###
* [Java-8](https://bitbucket.org/wicked-ride/.devcontainer/src/java-8/): `git clone --single-branch --branch java-8 git@bitbucket.org:wicked-ride/.devcontainer.git  && rm -rf .devcontainer/.git`
* [python-3.8](https://bitbucket.org/wicked-ride/.devcontainer/src/python-3.8/): `git clone --single-branch --branch python-3.8 git@bitbucket.org:wicked-ride/.devcontainer.git && rm -rf .devcontainer/.git`


### Links ###
* [devcontainers](https://code.visualstudio.com/docs/remote/containers)
* [devcontainer advanced configuration](https://code.visualstudio.com/docs/remote/containers-advanced) page]
* [devcontaienr.json reference](https://code.visualstudio.com/docs/remote/containers#_devcontainerjson-reference)