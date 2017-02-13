#!/usr/bin/env sh 

Exp=TFS_Experiment170208_resnet

python eval_image_classifier.py \
--dataset_name=genea \
--eval_dir=/home/ubuntu/Experiments/${Exp}_eval_2 \
--dataset_dir=/home/ubuntu/Data/GeneaTRF \
--dataset_split_name=validation \
--model_name=inception_resnet_v2 \
--checkpoint_path=/home/ubuntu/Experiments/TFS_Experiment170208_resnet/model.ckpt-59745
#--checkpoint_exclude_scopes=Inception-ResNet-v2/Logits,Inception-ResNet-v2/AuxLogits/Logits > ${Exp}_train.log &
