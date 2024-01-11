#!/bin/bash

#SBATCH -J pipeline
#SBATCH -o ./sbatch_output/pipeline.out
#SBATCH -e ./sbatch_output/pipeline.err
#SBATCH -c 8
#SBATCH -t 48:00:00
#SBATCH --mem=8GB

~/.local/bin/micromamba run -n towbintools python3 pimp_your_pipeline.py