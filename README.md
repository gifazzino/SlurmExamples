This directory contains two examples of projects with the corresponding slurm submission jobs:
* `hello_world/`, a minimal C++ example printing (as you may guess) "hello world"
* `metric_learning/`, where a dummy network is trained after activating a conda enviroment (using the [acorn framework](https://gitlab.cern.ch/gnn4itkteam/acorn))

You may submit a job to the queue with the command `sbatch hello_world_job.slurm`

After your job is submitted, you can monitor it with the command `squeue` (to view the whole queue), or `squeue -u $USER` (to view only your jobs)

With the submit files in these examples, the log and output files will be stored in the folder `logs`, created as you submit the job if it doesn't already exist. 
For example, after submitting `hello_world_job.slurm`, the directory structure will look like this:
```
.                                                                                                                   
├── bin
│   └── hello_world
├── hello_world.cxx
├── hello_world_job.slurm
└── logs
    ├── gfazzino_helloworld_26.err
    └── gfazzino_helloworld_26.out
```
