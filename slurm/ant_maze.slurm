#!/bin/bash
#
#SBATCH --job-name=antmaze
#SBATCH --output=slurm_logs/antmaze_sh_%j.out
#SBATCH --error=slurm_logs/antmaze_sh_%j.err
#SBATCH --time=12:00:00
#SBATCH --gres=gpu:1
#SBATCH --account=ai
#SBATCH --partition=ai
#SBATCH --qos=ai
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --constraint="tesla_t4"
#SBATCH --mail-type=BEGIN,END,FAIL # notifications for job done & fail

eval "$(conda shell.bash hook)"
conda activate tap

cd ../
./antmaze.sh
