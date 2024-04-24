#!/bin/bash
USER="this is madhavi i am devops engineer"

echo "before calling other script current script:$USER"
echo "process id of current script:$$"

./13-other-shell.sh
echo "after calling other script:$USER"