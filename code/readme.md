# code
Scripts are organized in the oder they should be run.

[01-seq-quality-trim.sh](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/01-seq-quality-trim.sh): Use `TrimGalore` on raw data to remove 10 bp from 5' and 3' ends

[02-bismark.sh](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/02-bismark.sh): Trimmed files are aligned to the *C. virginica* genome with `bismark`

[03-Counting-Reads.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/02-Counting-Reads.ipynb): Count untrimmed and trimmed reads, as well as reads that mapped back to the genome

[04-methylkit.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/03-methylkit.Rmd): Differentially methylated loci identified

[05-Generating-Coverage-Tracks.ipynb (*optional*)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/05-Generating-Coverage-Tracks.ipynb): Generate coverage tracks to view in IGV. Recommended before characterization of DML locations in the *C. virginica* genome

[06-te_repeatmasker.sh](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/4-te_repeatmasker.sh): Generate transposable element track

[07-DML-Analysis.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/07-DML-Analysis.ipynb): Characterize location of DML in *C. virginica* genome with `bedtools`

[08-Characterizing-CpG-Methylation](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/08-Characterizing-CpG-Methylation.ipynb): Describe general methylation trends in *C. virginica* gonad samples