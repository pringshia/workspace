# portable workspace

This is an experiment to "commoditize" my development environment - making it portable, reproducible, and well-documented.

By doing so, I hope to:

- de-risk device/environment lock-in by making the ergonomics and mental models I invest in portable
- reduce the cognitive load required when debugging environments
- allow me to maintain efficiency and shared context across different machines
- encourage audacious experimentation by making my configuration cattle not pets
- document my setup more formally

## TODOs

- Consider using a different base image, for example [gitpod/openvscode-server](https://github.com/gitpod-io/openvscode-server/) or [gitpod/worspace-full](https://github.com/gitpod-io/workspace-images)?
- Update the Dockerfile to pull config from the github repo instead of various gists
- Set up continuous integration with Github Actions
