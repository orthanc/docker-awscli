# Docker AWS CLI

[![docker-awscli build status](https://circleci.com/gh/orthanc/docker-awscli.svg?style=svg)](https://circleci.com/gh/orthanc/workflows/docker-awscli/)

This is a very minimal install of the AWS CLI on alpine Linux. It's intended as a base image for use in
ci builds that use the AWS CLI to interact with AWS services.

The versions are not locked down, so each time this will be based on the latest `python:3-alpine` tag and
install the latest version of the AWS CLI

Each build of this repository creates four tags:

* `latest`
* `aws-cli-<AWS CLI MAJOR VERSION>_python-<PYTHON MAJOR VERSION>`
* `aws-cli-<AWS CLI MAJOR VERSION>.<AWS CLI MINOR VERSION>_python-<PYTHON MAJOR VERSION>.<PYTHON MINOR VERSION>`
* `aws-cli-<AWS CLI MAJOR VERSION>.<AWS CLI MINOR VERSION>_python-<PYTHON MAJOR VERSION>.<PYTHON MINOR VERSION>`
* `aws-cli-<AWS CLI VERSION>_python-<PYTHON VERSION>_build-<BUILD NUMBER>`

The idea is that by picking the right tag you can have consistency for your builds without having to manually upgrade
the tag all the time. Generally recommended is to use the major version tag as minor versions should be backwards
compatible.

The resulting docker images are published as [orthanc2/awscli](https://hub.docker.com/r/orthanc2/awscli)
