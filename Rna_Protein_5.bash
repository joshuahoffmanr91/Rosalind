#!/bin/bash

Protein () {

unset String {A..Z}
String=$1
A=-1

 
declare -A Codex=(\
[H]="CA[U|C]"     \
[Q]="CA[A|G]"     \
[P]="CC[U|G|A|C]" \
[L]="(CU[U|G|A|C]|UU[G|A])" \
[R]="(CG[U|G|A|C]|AG[G|A])" \
[D]="GA[U|C]"     \
[E]="GA[G|A]"     \
[A]="GC[U|G|A|C]" \
[G]="GG[U|G|A|C]" \
[V]="GU[U|G|A|C]" \
[Y]="UA[U|C]"     \
[\ ]="(UA[G|A]|UGA)"    \
[S]="(UC[U|G|A|C]|AG[U|C])" \
[C]="UG[U|C]"     \
[W]="UGG"         \
[F]="UU[U|C]"     \
[N]="AA[U|C]"     \
[K]="AA[G|A]"     \
[T]="AC[U|G|A|C]" \
[I]="AU[U|A|C]"   \
[M]="AUG"         )

	while (( ${#String} >= $((B=++A*3)) )); do
	Array+=(${String:$B:3})
	done

	for Val in ${Array[@]}; do
	
		for Code in ${!Codex[@]}; do
		[[ $Val =~ ${Codex[$Code]} ]] && Decoded+=$Code
		done
		
	done

echo $Decoded

}

Protein AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA
