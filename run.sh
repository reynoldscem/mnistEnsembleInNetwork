#!/bin/bash
declare -a arr=("1" "2" "4" "8" "16" "32")

for i in "${arr[@]}"
do
  python mnist.py --n-modules "${i}" > "new_logs/${i}.log" &
done
