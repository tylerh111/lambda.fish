#!/usr/bin/env fish
# run from project root

source functions/promptswap.lambda.fish

function whoami; echo 'user'; end
function uname; echo 'machine'; end
function pwd; echo '~/lambda.fish'; end
function date; echo '01:00:00'; end
set CMD_DURATION 0

cd dummy
set -l left  (fish_prompt)
set -l right (fish_right_prompt)

printf '%s\n'     $left[1..-2]
printf '%s%s%s\n' $left[-1] (string repeat -n 32 ' ') $right
