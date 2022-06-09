#!/bin/bash

dir=`dirname $0`
result_file="$dir/users_list.txt"

count_users=500 #max users count

rm $result_file

for i in `seq -w  1 $count_users`; do

login="user$i"
password=`pwgen -s 12 1`
line="$login,$password"


echo "$line" >> "$result_file"
done
