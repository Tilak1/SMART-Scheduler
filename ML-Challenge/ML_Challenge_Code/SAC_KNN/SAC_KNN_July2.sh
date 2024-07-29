#!/bin/bash
#SBATCH --partition=gpu 
#SBATCH --nodes=1
#SBATCH --gres=gpu:a100:1
#SBATCH --constraint=a100@80g
#SBATCH --time=8:00:00
#SBATCH --job-name=gpu_run
#SBATCH --mem=10GB
#SBATCH --ntasks=1
#SBATCH --output=SAC_KNN.%j.out
#SBATCH --error=SAC_KNN.%j.err
#SBATCH --mail-type=END
#SBATCH --mail-user=marupilla.t@northeastern.edu

# Activate the conda environment
# Load required modules
module load anaconda3/2022.05 cuda/12.1 intel/mkl-2021.3.0 gcc/11.1.0 

source activate py310Env

# Add your code below
python main.py
