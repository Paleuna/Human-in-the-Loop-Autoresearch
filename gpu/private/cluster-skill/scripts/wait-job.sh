#!/usr/bin/env bash
# Wait until a Slurm job on ICE leaves the queue, then print its final state and log tail.
# Usage: wait-job.sh <ssh-target> <jobid> [remote-log-dir] [poll-seconds]
# Run it in the background (Claude Code: run_in_background=true); don't poll by hand.
set -uo pipefail
ICE=${1:?ssh target, e.g. ice}
JOB=${2:?job id}
LOGDIR=${3:-'~/scratch/*/jobs/logs'}
POLL=${4:-300}

while ssh -o BatchMode=yes -o ConnectTimeout=20 "$ICE" "squeue -h -j $JOB" 2>/dev/null | grep -q .; do
  sleep "$POLL"
done

ssh -o BatchMode=yes "$ICE" "
  sacct -j $JOB --format=JobID,JobName%30,State,Elapsed,MaxRSS,ExitCode -P | head -4
  f=\$(ls $LOGDIR/*-$JOB.out 2>/dev/null | head -1)
  if [ -n \"\$f\" ]; then
    echo '--- log:' \$f
    tail -n 25 \"\$f\"
    echo '--- error scan:'
    grep -nE 'Traceback|Error|CUDA error|Killed|OOM|DUE TO TIME LIMIT' \"\$f\" | tail -n 10 || echo 'none'
  else
    echo 'log not found under $LOGDIR'
  fi
"
echo "exited with code 0"
