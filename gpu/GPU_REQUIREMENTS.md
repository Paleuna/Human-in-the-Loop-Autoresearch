# GPU and cluster requirements

Read `GENERAL_REQUIREMENTS.md` before GPU or Slurm work. These points add practical detail to its compute approval and evidence rules. The agent may use the tools and scheduler workflow available in the project; no particular job format or command runner is required.

- **Explain the need for compute.** Identify the planned experiment, the question it answers, why a smaller check is insufficient, the requested resources and expected runtime, and what result would stop or justify scaling up.
- **Make authorization reviewable.** Before a substantive job or bounded batch, show the human its purpose, command or submission procedure, resource request, expected budget, and output location. Obtain explicit approval for that scope. Changed purpose or materially larger resources require another approval.
- **Smoke before scale.** Check paths, dependencies, data access, and output writing in the intended environment. A substantive GPU or remote smoke job also requires authorization. Inspect the smoke result before a larger run.
- **Use actual site instructions.** Keep private cluster runbooks and configuration in `gpu/private/`, and credentials in the appropriate credential store. Verify current partitions, accounts, quotas, and environment requirements before use. Do not publish private settings or assume one site's SSH, synchronization, or shared filesystem setup applies elsewhere.
- **Preserve evidence.** Capture the actual command and code version, scheduler ID when relevant, terminal state, logs, metrics, and artifact locations. Check the scheduler and logs before declaring a job complete. Failed and cancelled attempts remain part of the record and report.

If infrastructure repeatedly fails, return to the human with the cause and options. If the scientific measurement is uninformative, revisit the research question instead of tuning indefinitely. The agent chooses the project's ordinary tools for recording and presenting this information; the important requirement is that the researcher can inspect the authorization and reconstruct what happened.
