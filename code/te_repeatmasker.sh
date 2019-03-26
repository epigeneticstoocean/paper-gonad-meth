#!/bin/env bash

# A script for identifying transposable elements in the Crassostrea virginica genome
# This script was designed to run on Ubuntu 16.04 LTS with the following software:
# - md5sum
# - RepeatMasker 4.0.7
# - RepBase RepeatMasker Edition 20170127
# - RMBlast with the isb 2.6.0 patch
# - Tandem Repeat Finder v4.09

# The user needs to set the following three variables.
#################
# Set working directory
wd=""

# RepeatMasker program
repeat_masker=""

# Set CPUs. If not set, will default to 4.
cpus=""
################

# Test to see if variables are set
[ -z "${wd}" ] && echo "Working directory not set. Please edit script and set path for wd." && exit 1
[ -z "${repeat_masker}" ] && echo "RepeatMasker path not set. Please edit script and set path for RepeatMasker." && exit 1
[ -z "${cpus}" ] && cpus=4

# FastA URL
fasta_url="http://owl.fish.washington.edu/halfshell/genomic-databank/Cvirginica_v300.fa"
fasta="Cvirginica_v300.fa"
fasta_md5="f9135e323583dc77fc726e9df2677a32"

# Download file to working directory
wget "${fasta_url}" \
--directory-prefix="${wd}"

# Generate checksum
echo "Generating MD5 checksum..."
dl_md5=$(md5sum "${wd}"/"${fasta}" | awk '{ print $1 }')
echo ""
echo "Checksum: ${dl_md5}"
echo ""

#Compare cheksums
echo "Comparing original checksum to downloaded file checksum..."
echo ""
diff <(echo "${fasta_md5}") <(echo "${dl_md5}")
&& echo "Checksums match!"\
|| echo "Checksums do not match. Try re-downloading file and then re-running script." exit 1

# Run RepeatMasker
cd "${wd}"

echo ""
echo "Running RepeatMasker. This may take awhile."
echo ""
"${repeat_masker}" \
"${fasta}" \
-species "all" \
-par ${cpus} \
-gff \
-excln \
1> stdout.txt \
2> stderr.txt
echo "All done! Check stderr.txt for any problems."
