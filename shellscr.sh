#!/bin/bash

count=0;
if [ "$#" != 1 ]; then
    echo "Mod de utilizare: $0 <c>"
    exit 1
fi

while IFS= read -r line; do
    if [[ $line =~ ^[A-Z][A-Za-z0-9[:space:]\,\.\!?]*[.?!]$ && ! $line =~ ,[[:space:]]*[Ss][Ii] ]]; then
        ((count++))
        
    fi
done
echo "$count";
