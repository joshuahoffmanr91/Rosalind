#!/bin/bash

Motif () {
  
  while (( $[A=++B-1] <= ${#1}-${#2} )); do
  [[ ${1:$A:${#2}} == $2 ]] && Place+=($B)
  done
  
echo ${Place[@]}
  
}

Motif GATATATGCATATACTT ATAT
