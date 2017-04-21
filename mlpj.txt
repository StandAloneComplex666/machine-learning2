#!/bin/bash
#PBS -l nodes=1:ppn=1
#PBS -l walltime=5:00:00
#PBS -l mem=2GB
#PBS -N jobname
#PBS -M bob.smith@nyu.edu
#PBS -j oe
 
module purge
module load pytorch/intel/20170226
RUNDIR=$SCRATCH/my_project/run-${PBS_JOBID/.*}
mkdir -p $RUNDIR
 
DATADIR=$SCRATCH/my_project/data
cd $RUNDIR
python pytorch_nn.py
 
# leave a blank line at the end