#!/bin/bash

# Rethinking Portrait Matting with Privacy Preserving
# Main test file.

# Copyright (c) 2022, Sihan Ma (sima7436@uni.sydney.edu.au) and Jizhizi Li (jili8515@uni.sydney.edu.au)
# Licensed under the MIT License (see LICENSE for details)
# Github repo: https://github.com/ViTAE-Transformer/ViTAE-Transformer-Matting.git

arch='vitae'
model_path=''
dataset='P3M10K'
valset='P3M_500_P'
test_choice='HYBRID'

nickname='test_dataset'
result_dir='results/'${nickname}

python core/infer.py \
--arch $arch \
--dataset $dataset \
--test_set $valset \
--model_path $model_path \
--test_choice $test_choice \
--test_result_dir $result_dir

