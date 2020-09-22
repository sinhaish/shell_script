#!/bin/bash
read -p "Enter a file name to execute" script
result=`test -x "$script" && bash $script || echo "The file is not executable"`
echo "The output of the file is $result"
