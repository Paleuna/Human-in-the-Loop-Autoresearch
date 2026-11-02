#!/bin/bash -l
# Short smoke test: same environment as the full job, tiny input, 30 minutes.
#SBATCH -A <account>
#SBATCH -q coe-ice
#SBATCH -p coe-gpu
#SBATCH --gres=gpu:h200:1
#SBATCH -c 4
#SBATCH --mem=32G
#SBATCH -t 00:30:00
#SBATCH -J <proj>-smoke
#SBATCH -o <abs-scratch-path>/<proj>/jobs/logs/%x-%j.out

set -euo pipefail
module load python/3.11.9
R=$HOME/scratch/<proj>
cd "$R/code"
source .venv/bin/activate

python -c "import torch; print('torch', torch.__version__, 'cuda', torch.version.cuda, 'avail', torch.cuda.is_available())"
python -m <entry> --device cuda:0 --output-dir "$R/out/smoke" <small-input-flags> "$@"

echo "JOB_DONE_OK $(date -Is)"
