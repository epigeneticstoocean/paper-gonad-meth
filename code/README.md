# `code` Subdirectory structure

Scripts are organized in the oder they should be run.

- [01-seq-quality-trim.sh](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/01-seq-quality-trim.sh): Use `TrimGalore` on raw data to remove 10 bp from 5' and 3' ends
- [02-bismark.sh](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/02-bismark.sh): Trimmed files are aligned to the *C. virginica* genome with `bismark`
- [03-Counting-Reads.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/02-Counting-Reads.ipynb): Count untrimmed and trimmed reads, as well as reads that mapped back to the genome
- [04-methylkit.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/03-methylkit.Rmd): Differentially methylated loci identified
- [05-Generating-Coverage-Tracks.ipynb (*optional*)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/05-Generating-Coverage-Tracks.ipynb): Generate coverage tracks to view in IGV. Recommended before characterization of DML locations in the *C. virginica* genome
- [06-te_repeatmasker.sh](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/4-te_repeatmasker.sh): Generate transposable element track
- [07-Generating-Genome-Feature-Tracks.ipynb): Derive genome feature tracks from NCBI *C. virginica* genome](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/07-Generating-Genome-Feature-Tracks.ipynb): Derive genome feature tracks from NCBI *C. virginica* genome
- [08-DML-Analysis.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/08-DML-Analysis.ipynb): Characterize location of DML in *C. virginica* genome with `bedtools`
- [09-Characterizing-CpG-Methylation.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/09-Characterizing-CpG-Methylation.ipynb): Describe general methylation trends in *C. virginica* gonad samples
- [10-Characterizing-CpG-Methylation.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/10-Characterizing-CpG-Methylation.Rmd): Create figures to characterize CpG methylation in *C. virginica* gonad samples
- [11-Proportion-Test.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/11-Proportion-Test.Rmd): Use a proportion test to compare the proportion of genome feature overlaps between various CpG categories
- [12-blastx-to-GOslim.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/12-blastx-to-GOslim.ipynb): Match `blastx` output with mRNA transcripts to GOSlim terms
- [13-DML-Characterization.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/13-DML-Characterization.Rmd): Create annotation tables for DML and examine patterns in DML locations across chromosomes and genes
- [14-Gene-Enrichment-with-GO-MWU.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/14-Gene-Enrichment-with-GO-MWU.Rmd): Use GO-MWU to perform gene enrichment of DML-gene overlaps
- [15-Differentially-Methylated-Gene-Analysis.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/15-Differentially-Methylated-Gene-Analysis.Rmd): Identify differentially methylated genes and perform gene enrichment with GO-MWU
