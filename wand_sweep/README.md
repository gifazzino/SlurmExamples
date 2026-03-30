# Running a wandb sweep wit slurm
Find [here](https://docs.wandb.ai/models/sweeps/sweep-config-keys) the documentation on sweep configurations options.

To run it with slurm, we need a `sweep.yaml` file where we define the sweep. 

Then, ones has to run `wandb sweep sweep.yaml` to initialize it. 
This will have an output containing the line `Run sweep agent with: wandb agent <YOUR_SWEEP_AGENT>`. This is the agent name needed in the slurm submission file `sumbit.slurm`.

