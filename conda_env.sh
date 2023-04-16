#!/bin/bash

read -p "Enter environment name: " env_name

if conda info --envs | grep -q "^$env_name\s"; then
    echo "Environment '$env_name' already exists"
else
    conda create -y -n $env_name
fi

conda activate $env_name
