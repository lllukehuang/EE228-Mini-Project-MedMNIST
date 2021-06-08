#!/bin/bash

eval "$(conda shell.bash hook)"
conda activate ML

echo "Begin to Run ..."
python train.py --data_name pathmnist
wait
python train.py --data_name chestmnist
wait
python train.py --data_name dermamnist
wait
python train.py --data_name octmnist
wait
python train.py --data_name pneumoniamnist
wait
python train.py --data_name retinamnist
wait
python train.py --data_name breastmnist
wait
python train.py --data_name organmnist_axial
wait
python train.py --data_name organmnist_coronal
wait
python train.py --data_name organmnist_sagittal

echo "Finish......"