Reverse_Comp () {

  for One in A C; do
  Comp=${1//$One/$((++A))}

    for Two in T G; do
    Comp=${Comp//$A/$Two}
    done
  
  done

  while (( B-- > -${#Comp} )); do
  Reverse+=${Comp:$B:1}
  done

echo $Reverse

}

Reverse_Comp AAAACCCGGT
