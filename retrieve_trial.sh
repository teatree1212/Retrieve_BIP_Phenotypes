#!/bin/bash

trial_name=$1
api_key=$2

echo "Retrieving Information for trial ${trial_name} from BIP"
#make sure order of inputs is as in .ruby client script:

ls

echo "Start running ruby client"

ruby /usr/src/app/retrieve_phenotypes_and_ID.rb $trial_name $api_key


echo "creating list of Sequence Identifiers (Seq_names.txt)"


./ExtractSeqIds.sh

echo "done"
