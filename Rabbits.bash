#!/bin/bash

Rabbits () {

Array=( $1 $2 )

  while (( ${3:-1} >= ${A:=-1} )); do
  ((Value=${Array[A++]}+${Array[A]}))
  Array[A+1]=$Value
  done
  
echo ${Array[-1]}
  
}

Rabbits 3 5
