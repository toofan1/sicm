Lesson 00 — Setup: MIT Scheme + scmutils (Quickstart)

Objective
- Get a working MIT Scheme REPL and access to scmutils. Provide both Emacs (Geiser) and command-line instructions.

Prerequisites
- OS: Linux / macOS / Windows (WSL)
- Tools: git, MIT Scheme, Emacs (optional), Geiser (optional)

Quick install (Linux/macOS)
- MIT Scheme: follow official instructions (https://www.gnu.org/software/mit-scheme/). On Debian/Ubuntu: sudo apt-get install mit-scheme
- scmutils: obtain from https://people.csail.mit.edu/kiczales/scm-utils/ or via package manager if available. Recommended: clone into a local lib dir:
    mkdir -p ~/lib/scheme && cd ~/lib/scheme
    git clone https://github.com/scheme/scmutils.git

Verifying MIT Scheme (command-line)
- Start REPL: mit-scheme
- In the REPL try:
    (display "Hello from MIT Scheme\n")
    (+ 1 2 3)

Loading scmutils (example)
- From the directory containing scmutils, start mit-scheme and load the boot or top-level file. Exact load commands vary by scmutils layout; a common pattern:
    (load "scmutils.scm")
  or
    (load "boot.scm")
- If installed as a library, use (require 'scmutils) or adjust your scheme load-path.

Emacs + Geiser (recommended workflow)
- Install Geiser via MELPA and configure to use mit-scheme. Example snippet for .emacs or init.el:
    (use-package geiser :ensure t)
    (setq geiser-active-implementations '(mit-scheme))
    (setq geiser-mit-binary "mit-scheme")
- A sample .dir-locals.el is included to help Emacs detect Scheme files in this repo.

verify.scm
- A tiny script is included (verify.scm) that prints a simple expression and exits. Use to confirm command-line runs.

Next steps
- Open lessons/01-scheme-refresher for exercises and examples.

Notes
- If loading scmutils fails, consult the scmutils README for exact load names and ensure the load-path (or current directory) includes the scmutils files.
