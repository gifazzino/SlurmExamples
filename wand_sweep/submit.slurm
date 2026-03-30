#!/bin/bash
#SBATCH --job-name=wandb_sweep
#SBATCH --gres=gpu:1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=16G
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err

source /local/anaconda3/bin/activate <YOUR_ACORN_ENVIRONMENT>

wandb agent <YOUR_SWEEP_AGENT> # if optimization is done with random/bayes, you can add to this line (after agent) --count N to make it stop after N runs
