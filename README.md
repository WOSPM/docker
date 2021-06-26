# WOSPM Docker

This repository contains Dockerfile for [WOSPM/Checker](https://github.com/WOSPM/checker) tool and the built image is ready on Docker Hub.

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](CONTRIBUTING.md) [![Welcoming](https://img.shields.io/badge/WOSPM-Welcoming-green)](https://github.com/WOSPM/checker) [![CircleCI](https://circleci.com/gh/WOSPM/docker.svg?style=svg)](https://circleci.com/gh/WOSPM/docker)

---
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table Of Contents

- [Introduction](#introduction)
- [How To Use](#how-to-use)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

---

## Introduction

This is a repository of a Docker file to create images that contains pre-installed [wospm-checker](https://github.com/WOSPM/checker) with latest version to check your project. The latest image are also ready on [Docker Hub](https://hub.docker.com/r/wospm/checker).

## How To Use

You can check your repo by mounting the root directory of the repo to `/app` directory of the container.

```bash
docker run -v /path/tp/your/repo:/app -i -t  wospm/checker wospm-checker --verbose 1
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for detail.

## Code of Conduct

See [CODE_OF_CONDUCT](CODE_OF_CONDUCT) for detail.
