#!/bin/bash
#SBATCH --job-name=gfazzino_hellowworld
#SBATCH --gres=gpu:1              # Request 1 GPU
#SBATCH --cpus-per-task=4         # Number of CPU cores per task
#SBATCH --mem=16G                 # Memory
#SBATCH --time=02:00:00           # Max runtime (HH:MM:SS)
#SBATCH --output=logs/%x_%j.out   # Stdout (job name and ID)
#SBATCH --error=logs/%x_%j.err    # Stderr

# Compile the C++ code
g++ -o bin/hello_world hello_world.cxx

# Run my code
./bin/hello_world
