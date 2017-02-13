#!/usr/bin/env sh 

Exp=TFS_Experiment170211_resnet

nohup python -u train_image_classifier.py \
--train_dir=/home/ubuntu/Experiments/$Exp \
--dataset_dir=/home/ubuntu/Data/GeneaTRF \
--dataset_split_name=train \
--model_name=inception_resnet_v2 \
--checkpoint_exclude_scopes=InceptionResnetV2/AuxLogits/Logits,InceptionResnetV2/Logits \
--checkpoint_path=/home/ubuntu/Code/models/slim/checkpoints/inception_resnet_v2.ckpt > ${Exp}_train.log &
