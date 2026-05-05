# SSI Agent Builder

[![Build](https://github.com/educredentials/ssi-agent-build/actions/workflows/build.yaml/badge.svg)](https://github.com/educredentials/ssi-agent-build/actions/workflows/build.yaml)

Docker build configuration for [impierce/ssi-agent](https://github.com/impierce/ssi-agent) (beta branch). This repository provides a custom Dockerfile and configuration to build and publish the SSI agent container image to the SURF container registry.

## Usage

To build and publish a new version of the SSI agent:

1. Update submodule to latest version on `beta` branch
2. Commit this change
3. Tag the commit with the version number, e.g. `0.1.0`
4. Push the tag to GitHub

```bash
git submodule update --remote ssi-agent-source
git add ssi-agent-source
git commit -m "Update ssi-agent to latest beta"
git tag 0.1.0
git push origin 0.1.0
```

The image will be published to `ghcr.io/edubadges-educredentials/ssi-agent:1.0.0` and `ghcr.io/edubadges-educredentials/ssi-agent:latest'

Tagging is optional. Without tag, only a :latest image will be published.

## Local builds

Prerequisites:

- podman or docker
- just

```bash
just build
```
