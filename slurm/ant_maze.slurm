#!/bin/bash
#
#SBATCH --job-name=train_ant_maze_tap
#SBATCH --output=logs/train_ant_maze_tap_%j.out
#SBATCH --error=logs/train_ant_maze_tap_%j.err
#SBATCH --time=24:00:00
#SBATCH --gres gpu:1
#SBATCH --account="vita"
#SBATCH --nodes=1
#SBATCH --mem=32000
#SBATCH --mail-type=END,FAIL # notifications for job done & fail

eval "$(conda shell.bash hook)"
conda activate tap

cd ../
./antmaze.sh
