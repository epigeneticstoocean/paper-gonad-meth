---
title: "MethylKit"
author: "Yaamini Venkataraman"
date: "10/25/2018"
output: html_document
---

In this file, I'll identify differentially methylated loci (DMLs) and regions (DMRs) using `methylKit`.

# Prepare R Markdown file

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Install packages

```{r}
install.packages("devtools") #Install the devtools package
library(devtools) #Load devtools

source("https://bioconductor.org/biocLite.R") #Source package from bioconductor
biocLite("methylKit") #Install methylkit
```

```{r}
install_github("al2na/methylKit", build_vignettes = FALSE, repos = BiocInstaller::biocinstallRepos(), dependencies = TRUE) #Install more methylKit options
library(methylKit) #Load methylkit
```

# Obtain session information

```{r}
sessionInfo()
```

# Download files from `gannet`

```{bash}
wget -r -l1 --no-parent -A_dedup.sorted.bam http://gannet.fish.washington.edu/spartina/2018-10-10-project-virginica-oa-Large-Files/2018-11-07-Bismark-Mox/ #Download files from gannet. They will be stored in the same directory structure as they are online.
```

```{bash}
mv gannet.fish.washington.edu/spartina/2018-10-10-project-virginica-oa-Large-Files/2018-11-07-Bismark-Mox/* analyses/2018-10-25-MethylKit #Move all files from gannet folder to analyses folder
```

```{bash}
rm -r gannet.fish.washington.edu #Remove the empty gannet directory
```

# Process methylation data

```{r}
analysisFiles <- list("zr2096_1_dedup.sorted.bam",
                      "zr2096_2_dedup.sorted.bam",
                      "zr2096_3_dedup.sorted.bam",
                      "zr2096_4_dedup.sorted.bam",
                      "zr2096_5_dedup.sorted.bam",
                      "zr2096_6_dedup.sorted.bam",
                      "zr2096_7_dedup.sorted.bam",
                      "zr2096_8_dedup.sorted.bam",
                      "zr2096_9_dedup.sorted.bam",
                      "zr2096_10_dedup.sorted.bam") #Put all .bam files into a list for analysis.
```

```{r}
sample.IDs <- list("1", "2", "3", "4", "5", "6", "7", "8", "9", "10") #Create list of sample IDs
treatmentSpecification <- c(rep(0, times = 5), rep(1, times = 5)) #Specify which treatment the samples were from. 1 is the treatment (high pCO2) and 0 is the control (ambient pCO2)
```

I will use `processBismarkAln` to set different coverage metrics in the `mincov` argument. I'll use 3x, 5x, and 10x coverage.

```{r}
processedFilesCov3 <- processBismarkAln(location = analysisFiles, sample.id = sample.IDs, assembly = "v3", read.context = "CpG", mincov = 3, treatment = treatmentSpecification) #Process files for CpG methylation using 3x coverage. First 5 files were from ambient conditions, and the second from high pCO2 conditions.
```

```{r}
processedFilesCov5 <- processBismarkAln(location = analysisFiles, sample.id = sample.IDs, assembly = "v3", read.context = "CpG", mincov = 5, treatment = treatmentSpecification) #Process files for CpG methylation using 5x coverage. First 5 files were from ambient conditions, and the second from high pCO2 conditions.
```

```{r}
processedFilesCov10 <- processBismarkAln(location = analysisFiles, sample.id = sample.IDs, assembly = "v3", read.context = "CpG", mincov = 10, treatment = treatmentSpecification) #Process files for CpG methylation using 10x coverage. First 5 files were from ambient conditions, and the second from high pCO2 conditions.
```

# Differentially methylated loci

## Obtain methylation and coverage plots

```{r}
nFiles <- length(sample.IDs) #Count number of samples
fileName <- data.frame("nameBase" = rep("2018-10-25-Loci-Analysis/2018-11-07-Percent-CpG-Methylation", times = nFiles),
                       "nameBase2" = rep("2018-10-25-Loci-Analysis/2018-11-07-Percent-CpG-Coverage", times = nFiles),
                       "sample.ID" = 1:10) #Create new dataframe for filenames
head(fileName) #Confirm dataframe creation
```

### 3x coverage

```{r}
fileName$actualFileName <- paste(fileName$nameBase, "-3xCoverage", "-Sample", fileName$sample.ID, ".jpeg", sep = "") #Create a new column for the full filename for 3x coverage + specific sample's percent CpG methylation plot
fileName$actualFileName2 <- paste(fileName$nameBase2, "-3xCoverage", "-Sample", fileName$sample.ID, ".jpeg", sep = "") #Create a new column for the full filename for 3x coverage + specific sample's percent CpG coverage plot
head(fileName) #Confirm column creation
```

```{r}
for(i in 1:nFiles) { #For each data file
  jpeg(filename = fileName$actualFileName[i], height = 1000, width = 1000) #Save file with designated name
  getMethylationStats(processedFilesCov3[[i]], plot = TRUE, both.strands = FALSE) #Get %CpG methylation information
  dev.off() #Turn off plotting device
} #Plot and save %CpG methylation information
```

```{r}
for(i in 1:nFiles) { #For each data file
  jpeg(filename = fileName$actualFileName2[i], height = 1000, width = 1000) #Save file with designated name
  getCoverageStats(processedFilesCov3[[i]], plot = TRUE, both.strands = FALSE) #Get CpG coverage information
  dev.off() #Turn off plotting device
} #Plot and save CpG coverage information
```

### 5x coverage

```{r}
fileName$actualFileName3 <- paste(fileName$nameBase, "-5xCoverage", "-Sample", fileName$sample.ID, ".jpeg", sep = "") #Create a new column for the full filename for 5x coverage + specific sample's percent CpG methylation plot
fileName$actualFileName4 <- paste(fileName$nameBase2, "-5xCoverage", "-Sample", fileName$sample.ID, ".jpeg", sep = "") #Create a new column for the full filename for 5x coverage + specific sample's percent CpG coverage plot
head(fileName) #Confirm column creation
```

```{r}
for(i in 1:nFiles) { #For each data file
  jpeg(filename = fileName$actualFileName3[i], height = 1000, width = 1000) #Save file with designated name
  getMethylationStats(processedFilesCov5[[i]], plot = TRUE, both.strands = FALSE) #Get %CpG methylation information
  dev.off() #Turn off plotting device
} #Plot and save %CpG methylation information
```

```{r}
for(i in 1:nFiles) { #For each data file
  jpeg(filename = fileName$actualFileName4[i], height = 1000, width = 1000) #Save file with designated name
  getCoverageStats(processedFilesCov5[[i]], plot = TRUE, both.strands = FALSE) #Get CpG coverage information
  dev.off() #Turn off plotting device
} #Plot and save CpG coverage information
```

### 10x coverage

## Obtain clustering information

### `destrand = FALSE`

#### 3x coverage

```{r}
methylationInformationCov3 <- unite(processedFilesCov3) #Combine all processed files into a single table
head(methylationInformationCov3) #Confirm unite
```

```{r}
clusteringInformationCov3 <- clusterSamples(methylationInformationCov3, dist = "correlation", method = "ward", plot = FALSE) #Save cluster information as a new object
```

```{r}
jpeg(filename = "2018-10-25-Loci-Analysis/2018-11-07-Full-Sample-Pearson-Correlation-Plot-Cov3.jpeg", height = 1000, width = 1000) #Save file with designated name
getCorrelation(methylationInformationCov3, plot = TRUE) #Understand correlation between methylation patterns in different samples
dev.off()
```

```{r}
jpeg(filename = "2018-10-25-Loci-Analysis/2018-11-07-Full-Sample-CpG-Methylation-Clustering-Cov3.jpeg", height = 1000, width = 1000) #Save file with designated name
clusterSamples(methylationInformationCov3, dist = "correlation", method = "ward", plot = TRUE) #Cluster samples based on correlation coefficients
dev.off()
```

```{r}
jpeg(filename = "2018-10-25-Loci-Analysis/2018-11-07-Full-Sample-Methylation-PCA-Cov3.jpeg", height = 1000, width = 1000) #Save file with designated name
PCASamples(methylationInformationCov3) #Run a PCA analysis on percent methylation for all samples
dev.off() #Turn off plotting device
```

```{r}
jpeg(filename = "2018-10-25-Loci-Analysis/2018-11-07-Full-Sample-Methylation-Screeplot-Cov3.jpeg", height = 1000, width = 1000) #Save file with designated name
PCASamples(methylationInformationCov3, screeplot = TRUE) #Run the PCA analysis and plot variances against PC number in a screeplot
dev.off()
```

#### 5x coverage

```{r}
methylationInformationCov5 <- unite(processedFilesCov5) #Combine all processed files into a single table
head(methylationInformationCov5) #Confirm unite
```

#### 10x coverage

```{r}
methylationInformationCov10 <- unite(processedFilesCov10) #Combine all processed files into a single table
head(methylationInformationCov10) #Confirm unite
```

### `destrand = TRUE`

#### 5x coverage

```{r}
methylationInformationCov5Destrand <- unite(processedFilesCov5, destrand = TRUE) #Combine all processed files into a single table
head(methylationInformationCov5Destrand) #Confirm unite
```

```{r}
clusteringInformationCov5Destrand <- clusterSamples(methylationInformationCov5Destrand, dist = "correlation", method = "ward", plot = FALSE) #Save cluster information as a new object
```

```{r}
jpeg(filename = "2018-10-25-Loci-Analysis/2019-03-14-Full-Sample-Pearson-Correlation-Plot-Cov5Destrand.jpeg", height = 1000, width = 1000) #Save file with designated name
getCorrelation(methylationInformationCov5Destrand, plot = TRUE) #Understand correlation between methylation patterns in different samples
dev.off()
```

```{r}
jpeg(filename = "2018-10-25-Loci-Analysis/2019-03-14-Full-Sample-CpG-Methylation-Clustering-Cov5Destrand.jpeg", height = 1000, width = 1000) #Save file with designated name
clusterSamples(methylationInformationCov5Destrand, dist = "correlation", method = "ward", plot = TRUE) #Cluster samples based on correlation coefficients
dev.off()
```

```{r}
jpeg(filename = "2018-10-25-Loci-Analysis/2019-03-14-Full-Sample-Methylation-PCA-Cov5Destrand.jpeg", height = 1000, width = 1000) #Save file with designated name
PCASamples(methylationInformationCov5Destrand) #Run a PCA analysis on percent methylation for all samples
dev.off() #Turn off plotting device
```

```{r}
jpeg(filename = "2018-10-25-Loci-Analysis/2019-03-14-Full-Sample-Methylation-Screeplot-Cov5Destrand.jpeg", height = 1000, width = 1000) #Save file with designated name
PCASamples(methylationInformationCov5Destrand, screeplot = TRUE) #Run the PCA analysis and plot variances against PC number in a screeplot
dev.off()
```

#### 10x coverage

```{r}
methylationInformationCov10Destrand <- unite(processedFilesCov10, destrand = TRUE) #Combine all processed files into a single table
head(methylationInformationCov10Destrand) #Confirm unite
```

## Obtain differentially methylated loci

### `destrand = FALSE`

#### 3x coverage

```{r}
differentialMethylationStatsCov3 <- calculateDiffMeth(methylationInformationCov3) #Calculate differential methylation statistics based on treatment indication from processBismarkAln
diffMethStats50Cov3 <- getMethylDiff(differentialMethylationStatsCov3, difference = 50, qvalue = 0.01) #Identify loci that are at least 50% different
head(diffMethStats50Cov3) #Confirm creation
```

```{r}
write.csv(diffMethStats50Cov3, "2018-10-25-Loci-Analysis/2018-11-07-Differentially-Methylated-Loci-50-Cov3.csv") #Save table as .csv
```

#### 5x coverage

```{r}
differentialMethylationStatsCov5 <- calculateDiffMeth(methylationInformationCov5) #Calculate differential methylation statistics based on treatment indication from processBismarkAln
diffMethStats50Cov5 <- getMethylDiff(differentialMethylationStatsCov5, difference = 50, qvalue = 0.01) #Identify loci that are at least 50% different
head(diffMethStats50Cov5) #Confirm creation
```

```{r}
write.csv(diffMethStats50Cov5, "2018-10-25-Loci-Analysis/2019-03-13-Differentially-Methylated-Loci-50-Cov5.csv") #Save table as .csv
```

#### 10x coverage

```{r}
differentialMethylationStatsCov10 <- calculateDiffMeth(methylationInformationCov10) #Calculate differential methylation statistics based on treatment indication from processBismarkAln
diffMethStats50Cov10 <- getMethylDiff(differentialMethylationStatsCov10, difference = 50, qvalue = 0.01) #Identify loci that are at least 50% different
head(diffMethStats50Cov10) #Confirm creation
```

```{r}
write.csv(diffMethStats50Cov10, "2018-10-25-Loci-Analysis/2019-03-13-Differentially-Methylated-Loci-50-Cov10.csv") #Save table as .csv
```

### `destrand = TRUE`

#### 5x coverage

```{r}
differentialMethylationStatsCov5Destrand <- calculateDiffMeth(methylationInformationCov5Destrand) #Calculate differential methylation statistics based on treatment indication from processBismarkAln
diffMethStats50Cov5Destrand <- getMethylDiff(differentialMethylationStatsCov5Destrand, difference = 50, qvalue = 0.01) #Identify loci that are at least 50% different
head(diffMethStats50Cov5Destrand) #Confirm creation
```

```{r}
write.csv(diffMethStats50Cov5Destrand, "2018-10-25-Loci-Analysis/2019-03-13-Differentially-Methylated-Loci-Destrand-50-Cov5.csv") #Save table as .csv
```

#### 10x coverage

```{r}
differentialMethylationStatsCov10Destrand <- calculateDiffMeth(methylationInformationCov10Destrand) #Calculate differential methylation statistics based on treatment indication from processBismarkAln
diffMethStats50Cov10Destrand <- getMethylDiff(differentialMethylationStatsCov10Destrand, difference = 50, qvalue = 0.01) #Identify loci that are at least 50% different
head(diffMethStats50Cov10Destrand) #Confirm creation
```

```{r}
write.csv(diffMethStats50Cov10Destrand, "2018-10-25-Loci-Analysis/2019-03-13-Differentially-Methylated-Loci-Destrand-50-Cov10.csv") #Save table as .csv
```

# Differentially methylated regions

The code above allowed me to identify differentially methylated *loci* (DMLs). For an exploratory analysis, it is also useful to identify differentially methylated *regions* (DMRs). I will complete the tiling analysis using my `mincov = 3` object. I will use both 100 and 1000 bp sized windows and steps.

## Tiling window analysis

### 100 bp windows

```{r}
tiles100 <- tileMethylCounts(processedFilesCov3, win.size = 100, step.size = 100) #Add up C and T counts from each covered cytosine and return total C and T count for each tile. Perform this analysis with 100 bp sized windows, and slide 100 bp for each new window
head(tiles100[[10]]) #Confirm object creation. [[10]] only shows tile100 head for the 10th sample processed.
```

#### Obtain clustering information

```{r}
methylationInformationTiles100 <- unite(tiles100) #Combine all processed files into a single table
clusteringInformationTiles100 <- clusterSamples(methylationInformationTiles100, dist = "correlation", method = "ward", plot = FALSE) #Save clustering information as a new object
```

```{r}
jpeg(filename = "2018-10-25-Tiling-Analysis/2018-11-07-Full-Sample-Pearson-Correlation-Plot-Tiles100.jpeg", height = 1000, width = 1000) #Save file with designated name
getCorrelation(methylationInformationTiles100, plot = TRUE) #Understand correlation between methylation patterns in different samples
dev.off()
```

```{r}
jpeg(filename = "2018-10-25-Tiling-Analysis/2018-11-07-Full-Sample-CpG-Methylation-Clustering-Tiles100.jpeg", height = 1000, width = 1000) #Save file with designated name
clusterSamples(methylationInformationTiles100, dist = "correlation", method = "ward", plot = TRUE) #Cluster samples based on correlation coefficients
dev.off()
```

```{r}
jpeg(filename = "2018-10-25-Tiling-Analysis/2018-11-07-Full-Sample-Methylation-PCA-Tiles100.jpeg", height = 1000, width = 1000) #Save file with designated name
PCASamples(methylationInformationTiles100) #Run a PCA analysis on percent methylation for all samples
dev.off() #Turn off plotting device
```

```{r}
jpeg(filename = "2018-10-25-Tiling-Analysis/2018-11-07-Full-Sample-Methylation-Screeplot-Tiles100.jpeg", height = 1000, width = 1000) #Save file with designated name
PCASamples(methylationInformationTiles100, screeplot = TRUE) #Run the PCA analysis and plot variances against PC number in a screeplot
dev.off()
```

#### Obtain differentially methylated regions

```{r}
differentialMethylationStatsTiles100 <- calculateDiffMeth(methylationInformationTiles100) #Calculate differential methylation statistics based on treatment indication from processBismarkAln
diffMethStats50Tiles100 <- getMethylDiff(differentialMethylationStatsTiles100, difference = 50, qvalue = 0.01) #Identify loci that are at least 50% different
head(diffMethStats50Tiles100) #Confirm creation
```

```{r}
write.csv(diffMethStats50Tiles100, "2018-10-25-Tiling-Analysis/2018-11-07-Differentially-Methylated-Regions-50-Cov3-Tiles100.csv") #Save table as .csv
```

### 1000 bp windows

```{r}
tiles1000 <- tileMethylCounts(processedFilesCov3, win.size = 1000, step.size = 1000) #Add up C and T counts from each covered cytosine and return total C and T count for each tile. Perform this analysis with 1000 bp sized windows, and slide 1000 bp for each new window. This is the methylKit default.
head(tiles1000[[10]]) #Confirm object creation. [[10]] only shows tile100 head for the 10th sample processed.
```

#### Obtain clustering information

```{r}
methylationInformationTiles1000 <- unite(tiles1000) #Combine all processed files into a single table
clusteringInformationTiles1000 <- clusterSamples(methylationInformationTiles1000, dist = "correlation", method = "ward", plot = FALSE) #Save clustering information as a new object
```

```{r}
jpeg(filename = "2018-10-25-Tiling-Analysis/2019-03-07-Full-Sample-Pearson-Correlation-Plot-Tiles1000.jpeg", height = 1000, width = 1000) #Save file with designated name
getCorrelation(methylationInformationTiles1000, plot = TRUE) #Understand correlation between methylation patterns in different samples
dev.off()
```

```{r}
jpeg(filename = "2018-10-25-Tiling-Analysis/2019-03-07-Full-Sample-CpG-Methylation-Clustering-Tiles1000.jpeg", height = 1000, width = 1000) #Save file with designated name
clusterSamples(methylationInformationTiles1000, dist = "correlation", method = "ward", plot = TRUE) #Cluster samples based on correlation coefficients
dev.off()
```

```{r}
jpeg(filename = "2018-10-25-Tiling-Analysis/2019-03-07-Full-Sample-Methylation-PCA-Tiles1000.jpeg", height = 1000, width = 1000) #Save file with designated name
PCASamples(methylationInformationTiles1000) #Run a PCA analysis on percent methylation for all samples
dev.off() #Turn off plotting device
```

```{r}
jpeg(filename = "2018-10-25-Tiling-Analysis/2019-03-07-Full-Sample-Methylation-Screeplot-Tiles1000.jpeg", height = 1000, width = 1000) #Save file with designated name
PCASamples(methylationInformationTiles1000, screeplot = TRUE) #Run the PCA analysis and plot variances against PC number in a screeplot
dev.off()
```

#### Obtain differentially methylated regions

```{r}
differentialMethylationStatsTiles1000 <- calculateDiffMeth(methylationInformationTiles1000) #Calculate differential methylation statistics based on treatment indication from processBismarkAln
diffMethStats50Tiles1000 <- getMethylDiff(differentialMethylationStatsTiles1000, difference = 50, qvalue = 0.01) #Identify loci that are at least 50% different
head(diffMethStats50Tiles1000) #Confirm creation
```

```{r}
write.csv(diffMethStats50Tiles1000, "2018-10-25-Tiling-Analysis/2019-03-07-Differentially-Methylated-Regions-50-Cov3-Tiles1000.csv") #Save table as .csv
```

# Save DMLs and DMRs as BEDfiles

## Install packages

**Do not** install these packages until analysis in `methylKit` is complete, as some of the installed packages will mask others important for analysis.

```{r}
library(readr) #Load package

install.packages("tidyverse") #Install tidyverse
library(tidyverse) #Load package
```

## Background

```{r}
write_delim(methylationInformationCov3, "2018-11-29-Methylation-Information-Cov3.bed", delim = "\t", col_names = FALSE) #Write out all methylation information as a background to be used for gene enrichment analyses.
```

```{bash}
head 2018-11-29-Methylation-Information-Cov3.bed #Confirm formatting was retained in export
```

## DMLs

### `destrand = TRUE`

#### 5x coverage

```{r}
DML5xDestrand03132019 <- mutate(diffMethStats50Cov5Destrand, start = start -1, end = end + 1) %>% select(chr, start, end, meth.diff) %>% mutate_if(is.numeric, as.integer) #Save as a BED file, and avoid writing information in scientific notation
```

```{r}
head(DML5xDestrand03132019) #Confirm changes
```

```{r}
write_delim(DML5xDestrand03132019, "2019-03-13-DML-Destrand-5x-Locations.bed",  delim = '\t', col_names = FALSE) #Save data as a BED file
```
