#!/bin/bash

# ------------- example slurm script for running models ------------- #

#activate environment
source /vol/biomedic3/es525/anaconda3/bin/activate /vol/biomedic3/es525/anaconda3/envs/mammo/


#separability evaluation: manufacturer subgroups
python mammo-net-manufacturer.py --epochs 10 \
                            --batch_size 32 \
                            --batch_alpha 1.0 \
                            --learning_rate 0.00001 \
                            --num_workers 4 \
                            --model resnet18 \
                            --dataset embed \
                            --csv_file /vol/biomedic3/es525/mammo-label-bias/modified_metadata/embed-non-negative_singledensity_3manu_pseudo_balanced.csv \
                            --output_root /vol/biomedic3/es525/mammo-label-bias/output-manufacturer \
                            --output_name resnet18-b32-fixed-alpha-1.0-ffdm-lr-0.00001_singledensity_3manu_pseudo_balanced

#separability evaluation: pseudo-subgroups
python mammo-net-pseudo-subgroup.py --epochs 10 \
                            --batch_size 32 \
                            --batch_alpha 1.0 \
                            --learning_rate 0.00001 \
                            --num_workers 4 \
                            --model resnet18 \
                            --dataset embed \
                            --csv_file /vol/biomedic3/es525/mammo-label-bias/modified_metadata/embed-non-negative_singledensity_3manu_pseudo_balanced.csv \
                            --output_root /vol/biomedic3/es525/mammo-label-bias/output-pseudo_subgroup \
                            --output_name resnet18-b32-fixed-alpha-1.0-ffdm-lr-0.00001_singledensity_3manu_pseudo_balanced



#clean label baseline
python mammo-net-density.py --epochs 10 \
                            --batch_size 32 \
                            --batch_alpha 1.0 \
                            --learning_rate 0.00001 \
                            --num_workers 4 \
                            --model resnet18 \
                            --dataset embed \
                            --csv_file /vol/biomedic3/es525/mammo-label-bias/modified_metadata/embed-non-negative_singledensity_3manu_pseudo_balanced.csv \
                            --output_root /vol/biomedic3/es525/mammo-label-bias/output-density \
                            --output_name resnet18-b32-fixed-alpha-1.0-ffdm-lr-0.00001-binary_singledensity_3manu_pseudo_balanced



#label bias: fuji
python mammo-net-density-label-bias.py --epochs 10 \
                            --batch_size 32 \
                            --batch_alpha 1.0 \
                            --learning_rate 0.00001 \
                            --num_workers 4 \
                            --model resnet18 \
                            --dataset embed \
                            --csv_file /vol/biomedic3/es525/mammo-label-bias/modified_metadata/labelbias_subjectlevel_3manu_fuji_c_30.csv \
                            --output_root /vol/biomedic3/es525/mammo-label-bias/output-density-subject-labelbias \
                            --output_name resnet18-b32-fixed-alpha-1.0-ffdm-lr-0.00001-binary-3manu_fuji_c_30


#label bias: gems
python mammo-net-density-label-bias.py --epochs 10 \
                            --batch_size 32 \
                            --batch_alpha 1.0 \
                            --learning_rate 0.00001 \
                            --num_workers 4 \
                            --model resnet18 \
                            --dataset embed \
                            --csv_file /vol/biomedic3/es525/mammo-label-bias/modified_metadata/labelbias_subjectlevel_3manu_gems_c_30.csv \
                            --output_root /vol/biomedic3/es525/mammo-label-bias/output-density-subject-labelbias \
                            --output_name resnet18-b32-fixed-alpha-1.0-ffdm-lr-0.00001-binary-3manu_gems_c_30

#label bias: hologic
python mammo-net-density-label-bias.py --epochs 10 \
                            --batch_size 32 \
                            --batch_alpha 1.0 \
                            --learning_rate 0.00001 \
                            --num_workers 4 \
                            --model resnet18 \
                            --dataset embed \
                            --csv_file /vol/biomedic3/es525/mammo-label-bias/modified_metadata/labelbias_subjectlevel_3manu_hologic_c_30.csv \
                            --output_root /vol/biomedic3/es525/mammo-label-bias/output-density-subject-labelbias \
                            --output_name resnet18-b32-fixed-alpha-1.0-ffdm-lr-0.00001-binary-3manu_hologic_c_30

#label bias: pseudo-subgroup 0
python mammo-net-density-label-bias.py --epochs 10 \
                            --batch_size 32 \
                            --batch_alpha 1.0 \
                            --learning_rate 0.00001 \
                            --num_workers 4 \
                            --model resnet18 \
                            --dataset embed \
                            --csv_file /vol/biomedic3/es525/mammo-label-bias/modified_metadata/labelbias_subjectlevel_3manu_pseudo0_c_30.csv \
                            --output_root /vol/biomedic3/es525/mammo-label-bias/output-density-subject-labelbias \
                            --output_name resnet18-b32-fixed-alpha-1.0-ffdm-lr-0.00001-binary-3manu_pseudo0_c_30
