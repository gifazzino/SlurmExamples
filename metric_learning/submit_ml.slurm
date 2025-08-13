#!/bin/bash
#SBATCH --job-name=train_ml
#SBATCH --gres=gpu:2              # Request 2 GPUS
#SBATCH --cpus-per-task=8         # Number of CPU cores per task
#SBATCH --mem=30G                 # Memory
#SBATCH --time=02:00:00           # Max runtime (HH:MM:SS)
#SBATCH --output=logs/%x_%j.out   # Stdout (job name and ID)
#SBATCH --error=logs/%x_%j.err    # Stderr

# Load necessary modules or conda env
module load anaconda
source activate acorn_env

# Run your Python training script
srun acorn train metric_learning_train.yaml
