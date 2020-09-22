#!/bin/bash
read -p "Enter your name " name
length=`expr length "$name"`
echo "Length of your name is $length"
