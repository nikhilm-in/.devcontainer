# Devcontainer #

Devcontainer is the concept of using containers as a remote development environment. It is available as a feature for VS Code. Unsure if other IDE support it. 

The entire remote development environment is defined as a `Dockerfile` or a `docker-compose.yml` along with a `devcontainer.json` file under the `.devcontainer` directory in a git project. VS Code automatically recognizes it and volume mounts the project inside a container from the defined docker image.

Read more about using [devcontainers](https://code.visualstudio.com/docs/remote/containers) on VS Code here

## Advantages ##
* No further installation and setup needed other than the requirements shown below for anyone picking up the same project. 
* Development environment is isolated and immutable. Easier to work on projects with conflicting dependencies and libraries at the same time. Using devcontainer is also lighter than running any another form of isolation like virtual machines.
* The development environment is defined as code and checked in to the repo with the rest of infrastructure as code files.
* Supports defining the dependant services in a compose file and use one of the service from it as the devcontainer.
* Same dependencies irrespective of the host OS. Just need to install VS Code and Docker which is available for all OS and architecture (VS Code Windows on ARM support is available,WIP for linux. Docker already works on ARM.)

## Requirements ##
* [Docker](https://www.docker.com/get-started) **Note**: docker compose may also be needed.
* [VS Code](https://code.visualstudio.com/download)
* [Remote development extension pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)

## Usage ##
When creating a new project, git clone the specific branch that contains the language of the project using the command 
``` 
git clone --single-branch --branch <branchname> https://github.com/nikhilm-in/.devcontainer.git
```

It will create a directory called .devcontainer with the relevant Dockerfile and devcontainer.json file. Modify it to the use case by going through the [devcontainers quick start](https://code.visualstudio.com/docs/remote/containers) page or the [devcontainer advanced configuration](https://code.visualstudio.com/docs/remote/containers-advanced) page.

### Devcontainer templates for different languages ###
* [python-3.8](https://github.com/nikhilm-in/.devcontainer/tree/python-3.8): 
```
git clone --single-branch --branch python-3.8 https://github.com/nikhilm-in/.devcontainer.git && rm -rf .devcontainer/.git
```
* [Java-11](https://github.com/nikhilm-in/.devcontainer/tree/java-11): 
```
git clone --single-branch --branch java-11 https://github.com/nikhilm-in/.devcontainer.git  && rm -rf .devcontainer/.git
```
* [node-14.4.0](https://github.com/nikhilm-in/.devcontainer/tree/node-14.4.0/): 
```
git clone --single-branch --branch node-14.4.0 https://github.com/nikhilm-in/.devcontainer.git && rm -rf .devcontainer/.git
```

### Links ###
* [devcontainers](https://code.visualstudio.com/docs/remote/containers)
* [devcontainer advanced configuration](https://code.visualstudio.com/docs/remote/containers-advanced)
* [devcontaienr.json reference](https://code.visualstudio.com/docs/remote/containers#_devcontainerjson-reference)
* [Demo video](https://www.youtube.com/watch?v=TVcoGLL6Smo)
