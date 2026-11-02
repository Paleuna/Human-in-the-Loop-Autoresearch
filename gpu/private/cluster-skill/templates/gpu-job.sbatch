#!/bin/bash -l
# Single-GPU batch job for PACE ICE. Copy it, fill in the <placeholders>, then run: sbatch gpu-job.sbatch [args]
#SBATCH -A <account>
#SBATCH -q coe-ice
#SBATCH -p coe-gpu
#SBATCH --gres=gpu:h200:1
#SBATCH -c 8
#SBATCH --mem=64G
#SBATCH -t 08:00:00
#SBATCH -J <proj>-<what>
#SBATCH -o <abs-scratch-path>/<proj>/jobs/logs/%x-%j.out   # absolute path; run `readlink -f ~/scratch` on ICE

set -euo pipefail
module load python/3.11.9

R=$HOME/scratch/<proj>
export HF_HOME=$R/.cache/huggingface PIP_CACHE_DIR=$R/.cache/pip   # keep caches off the home quota

cd "$R/code"
source .venv/bin/activate

echo "host=$(hostname) job=$SLURM_JOB_ID gpus=$CUDA_VISIBLE_DEVICES start=$(date -Is)"
nvidia-smi --query-gpu=name,memory.total --format=csv,noheader

python -m <entry> --device cuda:0 --output-dir "$R/out/<what>" "$@"

echo "JOB_DONE_OK $(date -Is)"
