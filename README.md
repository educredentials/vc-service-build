# VC Service Builder

[![Build](https://github.com/educredentials/ssi-agent-build/actions/workflows/build.yaml/badge.svg)](https://github.com/educredentials/ssi-agent-build/actions/workflows/build.yaml)

Docker build configuration for [impierce/ssi-agent](https://github.com/impierce/ssi-agent) (beta branch). This repository provides a custom Dockerfile and configuration to build and publish the VC service container image to the SURF container registry.

## Usage

To build and publish a new version of the VC Service:

1. Update submodule to latest version on `beta` branch
2. Commit this change
3. Tag the commit with the version number, e.g. `0.1.0`
4. Push the tag to GitHub

```bash
git submodule update --remote ssi-agent-source
git add ssi-agent-source
git commit -m "Update impierce/ssi-agent to latest beta"
git tag 0.1.0
git push origin 0.1.0
```

The image will be published to `ghcr.io/edubadges-educredentials/vc-service:1.0.0` and `ghcr.io/edubadges-educredentials/vc-service:latest'

Tagging is optional. Without tag, only a :latest image will be published.

## Local builds

Prerequisites:

- podman or docker
- just

```bash
just build
```

This will copy files into the submodule, so run afterwards:

```bash
just clean
````
