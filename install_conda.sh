#!/usr/bin/env bash

export CONDA_ENV_NAME=deca-env
echo $CONDA_ENV_NAME

conda create -n $CONDA_ENV_NAME python=3.9

eval "$(conda shell.bash hook)"
conda activate $CONDA_ENV_NAME
pip install -r requirements.txt
pip install ./torch-1.9.1+cu111-cp39-cp39-linux_x86_64.whl
pip install ./torchvision-0.10.1+cu111-cp39-cp39-linux_x86_64.whl
pip install git+https://github.com/facebookresearch/pytorch3d.git@stable
