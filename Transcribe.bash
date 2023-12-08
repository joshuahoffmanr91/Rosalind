#/bin/bash

Transcribe () {

echo ${1//T/U}

}

[[ $(Transcribe GATGGAACTTGACTACGTAAATT) == GAUGGAACUUGACUACGUAAAUU ]] ; echo $?
