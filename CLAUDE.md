## What this tap owns

This is a Homebrew tap: one place where several projects publish their
formulae, so a user can install them with `brew install`.

- **The layout.** One formula per project, in `Formula/`.
- **The README.** It lists the formulae and explains how to install them.
- **The branch policy.** The default branch is unprotected, so a project's
  release workflow can push its formula unattended.

## What it does not own

- **A project's formula.** The project that publishes it writes and
  regenerates it. A change to a formula's contents belongs in that project.
- **A project's release workflow.** It belongs to the project, which decides
  when to publish and whether to review a formula first.
- **A user's installation.** Which formulae a user taps, installs or pins
  lives with whoever runs that machine.
- **Our own deployment, configuration and data for this tap.** These live
  with whoever runs it, not in this repo.

A seat working here may decline an ask outside this remit and say where it
belongs.
