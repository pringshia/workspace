# portable workspace

This is an experiment to "commoditize" my development environment - making it portable, reproducible, and well-documented.

By doing so, I hope to:

- de-risk physical device lock-in by decoupling the software ergonomics and mental models I invest in from the hardware layer
- reduce the cognitive load required to understand debugging environments as they evolve in complexity
- maintain efficiency through consistent, shared gestures and concepts across workspaces
- encourage audacious experimentation by making my configuration cattle not pets
- document my setup more formally through a workflow that encourages documentation

## Instructions

*Requirements: Docker and an internet connection to build the Docker image for the first time*

```sh
docker-compose run --rm --service-ports dev
```

## TODOs

- Consider using a different base image, for example [gitpod/openvscode-server](https://github.com/gitpod-io/openvscode-server/) or [gitpod/worspace-full](https://github.com/gitpod-io/workspace-images)?
- Update the Dockerfile to pull config from the github repo instead of various gists
- Set up continuous integration with Github Actions
