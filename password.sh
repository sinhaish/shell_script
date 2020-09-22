#!/bin/bash
read -p "Enter your password " -s pass
echo
md5=`echo "$pass" | md5sum | cut -f 1 -d " "`
sha=`echo "$pass" | sha512sum | cut -f 1 -d " "`
echo "The value of md5sum is $md5"
echo "The value of shasum is $sha"
