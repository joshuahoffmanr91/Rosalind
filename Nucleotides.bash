Nucleotides () {
  
  while [[ -n ${1:$((B=++A-1)):1} ]]; do
  ((__${1:$B:1}++))
  done
  
  for a in ${!__@}; do
  eval echo -n \$$a\" \"
  done
  
}

Nucleotides AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC
