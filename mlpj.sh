#!/bin/sh
#
#SBATCH --verbose
#SBATCH --job-name=mlpj
#SBATCH --output=slurm_%j.out
#SBATCH --error=slurm_%j.err
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --mem=1GB
#SBATCH --partition=gpu
#SBATCH --gres=gpu:2
 
cd /home/yc2739/machine-learning2
module load pytorch/0.1.11_5
module load torchvision/0.1.7
module load python/intel/2.7.12
module load cuda/8.0.44
srun python pytorch.py
