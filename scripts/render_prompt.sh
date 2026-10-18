#!/usr/bin/env fish
# run from project root

source functions/promptswap.lambda.fish

function whoami; echo 'user'; end
function uname; echo 'machine'; end
function pwd; echo '~'; end
function date; echo '00:00:00'; end
function __fish_git_prompt; end
set CMD_DURATION 0

cd dummy
set -l left  (fish_prompt)
set -l right (fish_right_prompt)

printf '%s\n'     $left[1..-2]
printf '%s%s%s\n' $left[-1] (string repeat -n 32 ' ') $right
