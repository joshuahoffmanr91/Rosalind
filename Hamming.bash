#!/bin/bash

Hamming () {
    
[[ -z $1 || -z $2 ]] || [[ ${#1} != ${#2} ]] && exit 1
A=-1

  while (( ++A < ${#1} )); do
  [[ ${1:$A:1} != ${2:$A:1} ]] && ((B++))
  done
  
echo $B
    
}

Hamming GAGCCTACTAACGGGAT CATCGTAATGACGGCCT
