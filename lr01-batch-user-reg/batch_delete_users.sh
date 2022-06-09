#!/bin/bash

dir=`dirname $0`
source_file="$dir/users_list.txt"

#iter_num=1

for user_data in `cat "$source_file"`; do

login=$(echo "$user_data" | mawk -F ',' {'print $1'}) 

echo "Delete user with login: $login..."
    
deluser --remove-home "$login" >> /dev/null

if [ $? -ne 0 ]; then
echo "Error: User does not exist"
else
echo "done."
fi

#[ $iter_num -eq 3 ] && exit 7 #FIXME: comment in production

#iter_num=$((iter_num+1))
done

