# portable workspace

My attempt to "commoditize" my dev environment - making it portable, reproducible, and well-documented.

By doing so, I hope to:

- de-risking physical device lock-in... decouple the software ergonomics & mental models I invest in from the hardware layer
- reduce the cognitive load required to understand debugging environments as they evolve in complexity
- maintain efficiency through consistent, shared gestures and concepts across workspaces
- encourage fearless experimentation of my dev setup, by making reversions easy
- better documentation, by being explicit about the setup steps I'm encourage to document more

## Instructions

*Requirements: Docker and an internet connection to build the Docker image for the first time*

```sh
make      # build the docker image
make sh   # run the shell
```

## TODOs

- Consider using a different base image? e.g. [gitpod/openvscode-server](https://github.com/gitpod-io/openvscode-server/) or [gitpod/workspace-full](https://github.com/gitpod-io/workspace-images)?
- Update the Dockerfile to pull config from the github repo instead of various gists
- Set up continuous integration with Github Actions
- Deploy the image somewhere?
- Set up aliases
- Set up editor [**DONE**]
