#!/bin/bash
#SBATCH --job-name=train_ml
#SBATCH --nodes=1
#SBATCH --gres=gpu:2              # Request 2 GPUS
#SBATCH --ntasks-per-node=2       # Ensure we use both GPUS
#SBATCH --cpus-per-task=8         # Number of CPU cores per task
#SBATCH --mem=30G                 # Memory
#SBATCH --output=logs/%x_%j.out   # Stdout (job name and ID)
#SBATCH --error=logs/%x_%j.err    # Stderr

# Load necessary modules or conda env
source /local/anaconda3/bin/activate acorn_env

# Run your Python training script
srun acorn train metric_learning_train.yaml
