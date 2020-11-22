#!/bin/bash
#3 list last 5 recently executed commands
echo "3"
HISTFILE=~/.bash_history
set -o history
history 5

