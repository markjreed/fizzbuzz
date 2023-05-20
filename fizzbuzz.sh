#!/usr/bin/env sh
for i in $(seq 1 100); do
  line=
  if [ $(( i % 3 )) -eq 0 ]; then 
    line=Fizz
  fi
  if [ $(( i % 5 )) -eq 0 ]; then 
    line=${line}Buzz
  fi
  printf '%s\n' "${line:-$i}"
done

