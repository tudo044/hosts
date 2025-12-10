#!/bin/bash
valideaza() {
if host $1 $3 | grep -q $2; then
echo "Valid: $1 -> $2"
else
echo "Invalid: $1 -> $2"
fi
}
while read line; do
[[ "$line" =~ ^#.*$ ]] && continue
[[ -z "$line" ]] && continue
ip=$(echo $line | awk '{print $1}')
name=$(echo $line | awk '{print $2}')
valideaza $name $ip 8.8.8.8
done < /etc/hosts
