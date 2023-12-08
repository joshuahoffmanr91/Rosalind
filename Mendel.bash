#!/bin/bash

Mendel () {

#Exercise: The probability that two randomly selected mating organisms will produce an individual possessing a dominant allele.
#Usage: Will default to 1 individual of each of the three allele combinations when no arguments are given.
#Positional pramaters:
#1 # of homozygous dominant individuals in the population
#2 # of heterozygous individuals in the population
#3 # of homozygous recessive individuals in the population
  
## Brace expands positional parameters 1–3 from one to populate arrays with values prefixed with the individuals populatin index and suffixed with the individual alleles delimited with '-'.
eval declare K=( {1..${1:-1}}-AA ) #homozygous dominant
eval declare M=( {1..${2:-1}}-Aa ) #heterozygous
eval declare L=( {1..${3:-1}}-aa ) #homozygous recessive
  
  for Pair in ${L[@]} ${M[@]} ${K[@]}; do
  
    for Set in ${L[@]} ${M[@]} ${K[@]}; do
    [[ $Set == $Pair ]] && continue
    
      for Match in 0 1; do
      Sets=${Set#*-}
      Pairs=${Pair#*-}
      
        for Made in 0 1; do
        [[ ${Sets:$Match:1}${Pairs:$Made:1} =~ (AA|Aa|aA) ]] && ((A++))
        ((B++))
        done
    
      done
    
    done
    
  done
  
echo .$((${A}00000/${B}))
  
}

Mendel 2 2 2
