# `analyses` Subdirectory Structure

This subdirectory hosts the output of all analyses regarding *C. virginica* epigenetic response to ocean acidification. Every folder houses all necessary files for a discrete analysis step in a larger pipeline. Folders follow this naming convention:

**Year-Month-Date-AnalysisStep** *(ex. 2018-10-25-MethylKit)*

Any output that is too large for Github can be found in [this `gannet` directory](https://gannet.fish.washington.edu/spartina/paper-gonad-meth/analyses/). Files not linked below are intermediate files generated during analyses.

The following pipelines are represented in this subdirectory:

**[2018-10-25-MethylKit](https://github.com/epigeneticstoocean/paper-gonad-meth/tree/master/analyses/2018-10-25-MethylKit)**: Output from [04-methylkit.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/04-methylkit.Rmd).

- [2018-10-25-Loci-Analysis](https://github.com/epigeneticstoocean/paper-gonad-meth/tree/master/analyses/2018-10-25-MethylKit/2018-10-25-Loci-Analysis): Subdirectory with dendograms, PCAs, and plots depicting CpG coverage and methylation for each sample produced when identifying DML
- BEDfiles with DML locations
	- [All DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-04-05-DML-Destrand-5x-Locations.bed)
	- [Hypermethylated DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-04-05-DML-Destrand-5x-Locations-Hypermethylated.bed)
	- [Hypomethylated DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-04-05-DML-Destrand-5x-Locations-Hypomethylated.bed)
	- [All 5x CpGs used by `methylKit`](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-05-14-Methylation-Information-Filtered-Destrand-Cov5.bed)
- DML distribution
	- [Number of DML in each chromosome](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-09-30-DML-per-Chromosome.csv)
	- [Distribution of DML and genes in each chromosome (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-09-30-DML-and-Gene-Distribution.pdf)
- Principal Component Analyses
	- [PCA of all data (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-11-19-All-Data-PCA.pdf)
	- [PCA of DML only (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-11-19-DML-Only-PCA.pdf)
	- [Multipanel with PCA of all data and DML (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-11-19-PCA-Multpanel.pdf)
- [Heatmap of DML (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-10-25-MethylKit/2019-11-19-DML-Only-Heatmap.pdf)

**[2018-11-01-DML-Analysis](https://github.com/fish546-2018/yaamini-virginica/tree/master/analyses/2018-11-01-DML-and-DMR-Analysis)**: Output from [08-DML-Analysis.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/08-DML-Analysis.ipynb).

- [2019-05-29-Flanking-Analysis](https://github.com/epigeneticstoocean/paper-gonad-meth/tree/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Flanking-Analysis): Subdirectory with output from `bedtools flank` and `bedtools closest` analysis. Includes overlaps with promoter track.
	- Putative promoter track overlaps with...
		- [All DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Flanking-Analysis/2019-05-29-Genes-Closest-NoOverlap-DMLs.txt)
		- [Hypermethylated DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Flanking-Analysis/2019-09-26-Promoter-Hypermethylated-DML.txt)
		- [Hypomethylated DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Flanking-Analysis/2019-09-26-Promoter-Hypomethylated-DML.txt)
	- [Closest, non-overlapping genes to DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Flanking-Analysis/2019-05-29-Genes-Closest-NoOverlap-DMLs.txt)
- DML overlaps with [genome feature tracks](https://github.com/epigeneticstoocean/paper-gonad-meth/tree/master/genome-feature-tracks). Any overlaps not represented in the list below can be found on `gannet`.
	- [DML-Exon UTR](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-DML-exonUTR.txt)
	- [DML-Exon](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-DML-Exon.txt)
	- [DML-Genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-DML-Genes.txt)
	- [DML-Intron](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-DML-Intron.txt)
	- [DML-TE](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-DML-TE-all.txt)
	- [DML-Intergenic regions](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-DML-intergenic.txt)
	- [DML-Methylation islands](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2020-02-06-DML-MI.txt)
	- [DML-Other](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-No-Overlap-DML.txt)
	- Hypermethylated DML overlaps...
		- [With exons](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Hypermethylated-DML-Exon.txt)
		- [With genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Hypermethylated-DML-Genes.txt)
		- [With introns](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Hypermethylated-DML-Intron.txt)
		- [With TE](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Hypermethylated-DML-TEall.txt)
		- [With "other"](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-No-Overlap-DML.txt)
	- Hypomethylated DML overlaps...
		- [With exons](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Hypomethylated-DML-Exon.txt)
		- [With genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Hypomethylated-DML-Genes.txt)
		- [With introns](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Hypomethylated-DML-Exon.txt)
		- [With TE](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-Hypomethylated-DML-TEall.txt)
		- [With "other"](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-05-29-No-Overlap-Hypomethylated-DML.txt)
- Feature track overlaps
	- [Exon-TE](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2018-11-07-Exon-TE-all.txt)
	- [Exon-Genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-06-20-Exon-Gene.txt)
	- [Intron-Genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-06-20-Intron-Gene.txt)
	- [Genes-TE](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2018-11-07-Genes-TE-all.txt)
- DML background overlaps...
	- [With putative promoters](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-06-20-DMLBackground-Promoters.txt)
	- [With mRNA](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-11-01-DML-Analysis/2019-06-20-DMLBackground-mRNA.txt)

**[2019-03-07-IGV-Verification](https://github.com/epigeneticstoocean/paper-gonad-meth/tree/master/analyses/2019-03-07-IGV-Verification)**: Output from [05-Generating-Coverage-Tracks.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/05-Generating-Coverage-Tracks.ipynb) and [09-Characterizing-CpG-Methylation.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/09-Characterizing-CpG-Methylation.ipynb).

- [2019-03-07-DML-Visualization.xml](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-07-IGV-Verification/2019-03-07-DML-Visualization.xml): IGV session used to verify DML by comparing DML to 5x coverage sample tracks.
- 5x coverage tracks for all samples (10 total)
- [2020-02-06-Methylation-Island-Verification.xml](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-07-IGV-Verification/2020-02-06-Methylation-Island-Verification.xml): IGV session used to compare methylation islands to mRNA

**[2019-03-18-Characterizing-CpG-Methylation](https://github.com/epigeneticstoocean/paper-gonad-meth/tree/master/analyses/2019-03-18-Characterizing-CpG-Methylation)**: Output from [09-Characterizing-CpG-Methylation.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/09-Characterizing-CpG-Methylation.ipynb) and [10-Characterizing-CpG-Methylation.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/10-Characterizing-CpG-Methylation.Rmd).

- All 5x CpG loci
	- [Frequency distribution (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2019-04-10-5x-CpG-Frequency-Distribution.pdf)
- Methylated loci (> 50% methylated)
	- [Distribution of methylated CpG along a scaled gene (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2019-10-10-Scaled-Gene-Methylated-Loci.pdf)
- Sparsely methylated loci (10-50% methylated)
	- [BEDfile](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2019-04-09-All-5x-CpG-Loci-Sparsely-Methylated.bed)
	- [bedgraph](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2019-04-09-All-5x-CpG-Loci-Sparsely-Methylated.bedgraph)
- Unmethylated loci (< 10% methylated)
	- [BEDfile](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2019-04-09-All-5x-CpG-Loci-Unmethylated.bed)
	- [bedgraph](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2019-04-09-All-5x-CpG-Loci-Unmethylated.bedgraph)
- Methylation islands
	- [Official methylation island list](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2020-02-06-Methylation-Islands-500_0.02_50-filtered.tab): Filtered version of [original file](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2020-02-06-Methylation-Islands-500_0.02_50.tab) created using [this script](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/methyl_island_sliding_window.pl)
		- [Associated BEDfile](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2020-02-06-Methylation-Islands-500_0.02_50-filtered.tab.bed)
	- Overlaps with...
		- [Genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2020-02-06-MI-Genes.txt)
		- [Intergenic regions](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2019-03-18-Characterizing-CpG-Methylation/2020-02-06-MI-intergenic.txt)

**[2018-12-02-Gene-Enrichment-Analysis](https://github.com/epigeneticstoocean/paper-gonad-meth/tree/master/analyses/2018-12-02-Gene-Enrichment-Analysis)**: Output from [10-Characterizing-CpG-Methylation.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/10-Characterizing-CpG-Methylation.Rmd), [11-Proportion-Test.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/11-Proportion-Test.Rmd), [12-blastx-to-GOslim.ipynb](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/12-blastx-to-GOslim.ipynb), [13-DML-Characterization.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/13-DML-Characterization.Rmd), and [14-Gene-Enrichment-with-GO-MWU.Rmd](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/code/14-Gene-Enrichment-with-GO-MWU.Rmd).

- Proportion test
	- [Overlap proportion data](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-01-15-Overlap-Proportions.csv)
	- [All CpGs vs. methylated CpGs (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-04-10-All-CpGs-Versus-Methylated-CpGs.pdf)
	- [5x CpGs vs. DML (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-04-10-Enriched-Versus-DML.pdf)
- GOSlim terms acquisition
	- [Master *C. virginica* GOSlim term list](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/Blastquery-GOslim.tab)
	- Biological processes
		- [Sorted GOSlim terms](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/Blastquery-GOslim-BP.sorted)
		- [Sorted, unique GOSlim terms](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/Blastquery-GOslim-BP.sorted.unique)
		- [Sorted, unique, no "other biological processes"](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/Blastquery-GOslim-BP.sorted.unique.noOther)
- DML characterization
	- [Annotated *C. virginica* transcripts with isolated Uniprot Accession codes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2018-09-11-Transcript-Uniprot-blastx-codeIsolated.txt)
	- DML distribution
		- [Genes with 1 DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-10-01-Genes-with-1-DML.csv)
		- [Genes with 2 DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-10-01-Genes-with-2-DML-withCounts.csv)
		- [Genes with 3 DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-10-01-Genes-with-3-DML-withCounts.csv)
		- [Genes with 4 DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-10-01-Genes-with-4-DML-withCounts.csv)
		- [Genes with 5 DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-10-01-Genes-with-5-DML-withCounts.csv)
		- [DML distribution in chromosomes and genes (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-10-03-DML-Distribution-in-Chr-Genes.pdf)
		- [Distribution of DML along a scaled gene (figure)](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-10-09-Scaled-Gene-DML-Distribution.pdf)
	- DML annotations
		- [Master DML annotation](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-06-20-Master-DML-Annotation.csv): Includes distance to closet gene (0 if overlapping)
		- [DML-Genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-06-20-DML-Gene-Annotation.csv)
		- [Hypermethylaed DML-Genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-06-20-DML-Gene-Annotation-Hypermethylated.csv)
		- [Hypomethylated DML-Genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-06-20-DML-Gene-Annotation-Hypomethylated.csv)
	- Gene background overlaps with...
		- [Introns](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-01-04-Gene-Background-Introns.txt)
		- [TE](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2018-12-18-Gene-Background-TEall.txt)
- Gene enrichment with GO-MWU
	- GO-MWU input
		- [GO annotation table](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-07-30-allTested-GO-Annotations-Table.tab)
		- [Table of significance measures](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-07-30-allTested-Table-of-Significance-Measures-Uncorrected.csv)
		- [Gene ontology database](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/go.obo)
		- [GO-MWU functions](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/gomwu.functions.R)
		- [GO-MWU perl script A](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/gomwu_a.pl)
		- [GO-MWU perl script B](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/gomwu_a.pl)
	- GO-MWU output for biological processes
		- [Reformatted data table with measures of interest](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/BP_2019-07-30-allTested-Table-of-Significance-Measures-Uncorrected.csv)
		- [Dissimilarity tables](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/dissim_BP_2019-07-30-allTested-GO-Annotations-Table.tab)
		- [Results of MWU test](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/MWU_BP_2019-07-30-allTested-Table-of-Significance-Measures-Uncorrected.csv)
	- Further analyses
		- [Unique entries for all tested CpG loci with GOterms](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-07-30-All-Tested-Loci-Uniprot-GOTerms-Unique.csv)
		- GOSlim terms for...
			- [All tested CpGs, biological processes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-07-30-allTested-CVGOSlim-Frequency-BP.csv)
			- [DML, biological processes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-07-30-condensedDML-CVGOSlim-Frequency-BP.csv)
		- GOSlim comparison figures
			- [All tested CpGs-gene overlaps](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-11-19-BP-GOSlim-allTested-Gene-Overlaps.pdf)
			- [DML-gene overlaps](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-11-19-BP-GOSlim-DML-Gene-Overlaps.pdf)
			- [All tested CpGs vs. DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-11-19-BP-GOSlim-allTested-Versus-DML.pdf)
		- Biomineralization genes
			- [List of biomineralization genes](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-12-09-Biomineralization-Genes.csv)
			- [List of biomineralization genes with DML](https://github.com/epigeneticstoocean/paper-gonad-meth/blob/master/analyses/2018-12-02-Gene-Enrichment-Analysis/2019-12-09-Biomineralization-Genes-with-DML.csv)

