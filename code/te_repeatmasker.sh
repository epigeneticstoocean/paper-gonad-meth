#!/bin/env bash


# Set working directory
wd=""

# FastA URL
fasta_url="wget http://owl.fish.washington.edu/halfshell/genomic-databank/Cvirginica_v300.fa"
fasta="Cvirginica_v300.fa"
fasta_md5="f9135e323583dc77fc726e9df2677a32"
dl_md5=$(md5sum ${wd}/${fasta} | awk '{ print $1 }')
diff <(echo "$md5") <(echo "$dl_md5")
