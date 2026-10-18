#!/usr/bin/env bash
# run from project root
set -eux -o pipefail

mkdir -p dummy
git -C dummy init
freeze -t xterm -p 10 -x "fish --no-config scripts/render_prompt.sh"          -o images/prompt.svg
freeze -t xterm -p 10 -x "fish --no-config scripts/render_prompt_git.sh"      -o images/prompt_git.svg
freeze -t xterm -p 10 -x "fish --no-config scripts/render_prompt_git_venv.sh" -o images/prompt_git_venv.svg
rm -rf dummy
