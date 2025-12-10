#!/bin/bash
while read line; do
[[ "$line" =~ ^#.*$ ]] && continue
[[ -z "$line" ]] && continue
ip=$(echo $line | awk '{print $1}')
name=$(echo $line | awk '{print $2}')
echo "IP: $ip Host: $name"
done < /etc/hosts
