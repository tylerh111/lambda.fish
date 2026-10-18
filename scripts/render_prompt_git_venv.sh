#!/usr/bin/env fish
# run from project root

source functions/promptswap.lambda.fish

function whoami; echo 'user'; end
function uname; echo 'machine'; end
function pwd; echo '~/pydantic-pint'; end
function date; echo '02:00:00'; end
set VIRTUAL_ENV ".venv"
set CMD_DURATION 0

cd dummy
set -l left  (fish_prompt)
set -l right (fish_right_prompt)

printf '%s\n'     $left[1..-2]
printf '%s%s%s\n' $left[-1] (string repeat -n 25 ' ') $right
