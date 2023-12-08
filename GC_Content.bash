#!/bin/bash

FASTA='>Rosalind_6404
CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCC
TCCCACTAATAATTCTGAGG
>Rosalind_5959
CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCT
ATATCCATTTGTCAGCAGACACGC
>Rosalind_0808
CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGAC
TGGGAACCTGCGGGCAGTAGGTGGAAT'

GC_Content () {

declare -A Array
One=${FASTA//$'\n'/}
Two="${One//>/$'\n'}"
declare -g Three=( ${Two//[A-Z|a-z|_]/\ } )

  for string in $FASTA; do 
  ! [[ $string == [^\>]* ]] && ((A++)) && continue
  Array[${Three[$A-1]}]+=$string
  done
    
  for key in ${!Array[@]}; do
  Length=${#Array[$key]}
  Denominator=${Array[$key]//CG/}
  Denominator_Length=${#Denominator}
  Percentage=$((Denominator_Length*100/Length))
  declare -g Answer[$Percentage]=$key
  done

  for Result in ${!Answer[@]}; do
  echo ${Answer[$Result]} %$Result
  done
    
}

GC_Content 
