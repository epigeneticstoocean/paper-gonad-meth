#!/bin/bash


TrimGalore-0.4.5/trim_galore \
--paired \
--clip_r1 10 \
--clip_r2 10 \
--three_prime_clip_R1 10 \
--three_prime_clip_R2 10 \
--output_dir ~/Downloads/20180411_trimgalore_10bp_Cvirginica_MBD \
--fastqc_args \
"--outdir ~/Downloads/20180411_trimgalore_10bp_Cvirginica_MBD/20180411_fastqc_trim_10bp_Cvirginica_MBD \
--threads 18" \
/home/sam/Downloads/zr2096/Raw_data/zr2096_10_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_10_s1_R2.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_1_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_1_s1_R2.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_2_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_2_s1_R2.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_3_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_3_s1_R2.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_4_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_4_s1_R2.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_5_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_5_s1_R2.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_6_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_6_s1_R2.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_7_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_7_s1_R2.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_8_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_8_s1_R2.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_9_s1_R1.fastq.gz \
/home/sam/Downloads/zr2096/Raw_data/zr2096_9_s1_R2.fastq.gz \
2> stderr.log




## TRIMMED FILES: http://owl.fish.washington.edu/Athaliana/20180411_trimgalore_10bp_Cvirginica_MBD/20180411_fastqc_trim_10bp_Cvirginica_MBD/
