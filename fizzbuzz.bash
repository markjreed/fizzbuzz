#!/usr/bin/env bash
for (( i=1; i<=100; ++i )); do
  line=
  if (( i % 3 == 0)); then 
    line+=Fizz
  fi
  if (( i % 5 == 0)); then 
    line+=Buzz
  fi
  printf '%s\n' "${line:-$i}"
done
