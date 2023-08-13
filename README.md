[![Docker](https://img.shields.io/badge/Docker-Containerisation-2496ED?logo=docker&logoColor=white&labelColor=2496ED&color=white)](https://www.docker.com/) ![Deployment](https://github.com/lukejcollins/amazon-linux-personal-dev-env/actions/workflows/pr-build-push.yml/badge.svg) ![Deployment](https://github.com/lukejcollins/amazon-linux-personal-dev-env/actions/workflows/nightly-build.yml/badge.svg)

# Amazon Linux DevEnv Docker Image

This repository houses a `Dockerfile` meticulously designed to cater to my specific development requirements. Utilising the latest Amazon Linux image as a foundation, it integrates a diverse array of tools like Neovim, git, clang, zsh, nodejs, and many more.

One of the standout features of this setup is its versatility; it serves as an adaptable base for any project I intend to containerise where the environment is based on Amazon Linux. A significant advantage is the ability to mount both my home directory and binary path. This facilitates seamless access to all host-side dependencies and configurations right from within the Docker container (e.g. formatters, linters etc.)

Notably, this image establishes a user named `lukecollins`. Additionally, references to specific locations on my local machine are hardcoded. You can match this to your needs by making any necessary modifications to the Dockerfile - please fork the repository and tailor it accordingly as per your requirements.

## Features:

- **Foundation**: Amazon Linux.
- **Development Arsenal**: Tools including git, clang, cmake, and gcc-c++.
- **Shell Experience**: `zsh` integrated.
- **Editor**: Directly sourced and integrated Neovim.
- **Node.js**: Incorporated primarily as a Github Copilot dependency.
- **NixOS Enhancements**: Paths augmented for NixOS binaries.

## Integration with GitHub Container Registry (GHCR):

Stay updated! This repository is set to auto-build the Docker image upon every `push` and `pull request`, subsequently pushing it to GHCR. There is also a nightly build. This protocol ensures the persistent availability of the freshest version of my development environment.

## Tailoring to Your Needs:

Should you wish to adapt this base for your workflow:

1. Make the repository your own with a fork.
2. Within the Dockerfile, tweak hardcoded elements like the username and introduce any other requisite tools.
3. Follow the deployment steps to construct and utilise your Docker image.

## Community Input:

Despite this repository being a mirror of my preferences, I welcome community interactions. Whether you spot a potential enhancement or wish to suggest modifications, feel free to raise an issue or submit a pull request.
