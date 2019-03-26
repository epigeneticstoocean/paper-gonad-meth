#!/bin/env bash


# Set working directory
wd=""

# FastA URL
fasta_url="http://owl.fish.washington.edu/halfshell/genomic-databank/Cvirginica_v300.fa"
fasta="Cvirginica_v300.fa"
fasta_md5="f9135e323583dc77fc726e9df2677a32"

# Download file
wget "${fasta_url}" \
--directory-prefix="${wd}"

# Generate checksum
dl_md5=$(md5sum "${wd}"/"${fasta}" | awk '{ print $1 }')

#Compare cheksums
diff <(echo "${fasta_md5}") <(echo "${dl_md5}") \
|| echo "Checksums do not match. Try re-downloading file and then re-running script." exit 1
