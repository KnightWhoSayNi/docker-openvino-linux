FROM ubuntu:16.04
MAINTAINER KnightWhoSayNi <threeheadedknight@protonmail.com>

RUN apt-get update -qq && \
    apt-get -u upgrade -qq

RUN apt-get install -y --no-install-recommends \
    curl \
    wget \
    unzip \
    git \
    bash \
    sudo \
    apt-transport-https \
    ca-certificates \
    cmake \
    make \
    automake \
    build-essential \
    vim \
    nano \
    tree \
    cpio \
    lsb-release

ARG PYTHON=python3
ARG PIP=pip3

RUN apt-get install -y ${PYTHON} ${PYTHON}-pip ${PYTHON}-dev ${PYTHON}-venv
RUN ln -s $(which ${PYTHON}) /usr/local/bin/python
RUN ${PIP} install --upgrade pip
RUN ${PIP} install --upgrade setuptools

RUN apt-get clean && \
    apt-get autoremove

ARG OPENVINO_GPG_PUB_KEY=https://apt.repos.intel.com/openvino/2019/GPG-PUB-KEY-INTEL-OPENVINO-2019

RUN wget -O OPENVINO_GPG_PUB_KEY ${OPENVINO_GPG_PUB_KEY} && \
    apt-key add OPENVINO_GPG_PUB_KEY && \
    apt-key list && \
    echo "deb https://apt.repos.intel.com/openvino/2019/ all main" > /etc/apt/sources.list.d/intel-openvino-2019.list && \
    apt-get update && \
    apt-cache search openvino && \
    apt-get install -y intel-openvino-dev-ubuntu16 && \
    apt-get clean && \
    apt-get autoremove

RUN cd /opt/intel/openvino/deployment_tools/model_optimizer/install_prerequisites && \
    ./install_prerequisites.sh

RUN cd /opt/intel/openvino/deployment_tools/demo && \
    ./demo_squeezenet_download_convert_run.sh

CMD ["/bin/bash"]
