


# Add Directories and Programs to Path


bismark_dir="/gscratch/srlab/programs/Bismark-0.19.0"

bowtie2_dir="/gscratch/srlab/programs/bowtie2-2.3.4.1-linux-x86_64/"

trimmed_files="/gscratch/scrubbed/yaamini/data/Virginica-MBD/2018-10-17-Trimmed-Files/"

genome="/gscratch/scrubbed/yaamini/data/Virginica-MBD/2018-04-27-Bismark-Inputs/"

samtools_dir="/gscratch/srlab/programs/samtools-1.9/"



# Genome preparation

# YRV prepared the bisulfite genome on hummingbird: https://github.com/RobertsLab/project-virginica-oa/blob/master/notebooks/2018-04-27-Gonad-Methylation-Bismark.ipynb



# Alignment



find ${trimmed_files}/zr2096_*R1*.fq.gz \

| xargs basename -s _s1_R1_val_1.fq.gz | xargs -I{} ${bismark_dir}/bismark \

--path_to_bowtie ${bowtie2_dir} \

--samtools_path ${samtools_dir} \

--non_directional \

-p 28 \

-score_min L,0,-1.2 \

--genome ${genome} \

-1 ${trimmed_files}/{}_s1_R1_val_1.fq.gz \

-2 ${trimmed_files}/{}_s1_R2_val_2.fq.gz \



#Deduplication



${bismark_dir}/deduplicate_bismark \

--samtools_path ${samtools_dir} \

-p \

--bam \

zr2096_*_s1_R1_val_1_bismark_bt2_pe.bam



#Sorting for Downstream Applications



find *deduplicated.bam \

| xargs basename -s _s1_R1_val_1_bismark_bt2_pe.deduplicated.bam | xargs -I{} ${samtools_dir}/samtools \

sort {}_s1_R1_val_1_bismark_bt2_pe.deduplicated.bam \

-o {}_dedup.sorted.bam



#Indexing for Downstream Applications



find *dedup.sorted.bam \

| xargs basename -s _dedup.sorted.bam | xargs -I{} ${samtools_dir}/samtools \

index {}_dedup.sorted.bam



#Methylation Extraction



${bismark_dir}/bismark_methylation_extractor \

--samtools_path ${samtools_dir} \

-p \

--bedGraph \

--counts \

--scaffolds \

--multicore 28 \

*deduplicated.bam



#HTML Processing Report



${bismark_dir}/bismark2report



#Summary Report



${bismark_dir}/bismark2summary
