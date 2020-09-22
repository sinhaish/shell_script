#!/bin/bash
echo "Filename is $0"
echo "First argument is $1"
echo "Second argument is $2"
echo "Number of arguments supplied is $#"
echo "Arguments are $*"
echo "Arguments are $@"
echo "Exit code of last command executed is $?"
echo "Process id of current shell is $$"
sleep 10 &
echo "Process id of last background command is $!"
