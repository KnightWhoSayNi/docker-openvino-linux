# docker-openvino-linux

[![Build Status](https://travis-ci.com/KnightWhoSayNi/docker-openvino-linux.svg?branch=master)](https://travis-ci.com/KnightWhoSayNi/docker-openvino-linux) [![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/KnightWhoSayNi/docker-openvino-linux/blob/master/LICENSE) ![Docker Pulls](https://img.shields.io/docker/pulls/threeheadedknight/docker-openvino-linux) ![Docker Stars](https://img.shields.io/docker/stars/threeheadedknight/docker-openvino-linux)

Simple Dockerfile with a Linux Developer Package of Intel® OpenVINO™ toolkit.
There is no need for any manual toolkit download before building this Docker image.

## Content

* Docker image based on Ubuntu `16.04`
* Intel® OpenVINO™ toolkit for Linux
* Developer Package for Ubuntu `16.04`
* OpenVINO™ `2019.2.242`
* Model Optimizer for Caffe, TensorFlow, MXNet, Kaldi and ONNX
* Python `3`

## Usage


### From Docker Hub

#### Pull

```shell
docker pull threeheadedknight/docker-openvino-linux
```

#### In a Dockerfile

```shell
FROM threeheadedknight/docker-openvino-linux:latest
```

### From provided Dockerfile

#### Build

```shell
docker build -t openvino-image .
```

#### Run

```shell
docker run -ti openvino-image
```


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


## Acknowledgments

[Intel® OpenVINO™](https://software.intel.com/en-us/openvino-toolkit)
