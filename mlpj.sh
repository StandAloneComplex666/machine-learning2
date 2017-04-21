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
module load pytorch/intel/20170226
srun python 