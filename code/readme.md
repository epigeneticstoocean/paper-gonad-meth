# code
Scripts are organized in the oder they should be run.

[01-seq-quality-trim.sh](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/01-seq-quality-trim.sh): Use `TrimGalore` on raw data to remove 10 bp from 5' and 3' ends

[02-bismark.sh](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/02-bismark.sh): Trimmed files are aligned to the *C. virginica* genome with `bismark`

[03-methylkit.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/03-methylkit.Rmd): Differentially methylated loci identified