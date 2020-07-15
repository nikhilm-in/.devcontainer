FROM node:14.4.0

ARG DOCKER_SCRIPT_SOURCE="https://raw.githubusercontent.com/microsoft/vscode-dev-containers/master/script-library/docker-debian.sh"
ARG DOCKER_SCRIPT_SHA="dev-mode"
ARG ENABLE_NONROOT_DOCKER="false"
ARG SOURCE_SOCKET=/var/run/docker-host.sock
ARG TARGET_SOCKET=/var/run/docker.sock

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    # Verify common dependencies and utilities are installed
    && apt-get -y install --no-install-recommends apt-utils dialog git openssh-client curl less iproute2 procps 2>&1 \
    #
    #
    # Use Docker script from script library to set things up
    && curl -sSL $DOCKER_SCRIPT_SOURCE -o /tmp/docker-setup.sh \
    && ([ "${DOCKER_SCRIPT_SHA}" = "dev-mode" ] || (echo "${DOCKER_SCRIPT_SHA} */tmp/docker-setup.sh" | sha256sum -c -)) \
    && /bin/bash /tmp/docker-setup.sh "${ENABLE_NONROOT_DOCKER}" "${SOURCE_SOCKET}" "${TARGET_SOCKET}" "root" \
    && rm /tmp/docker-setup.sh \
    #
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
