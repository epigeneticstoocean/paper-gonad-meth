# data

Raw data used for [analyses](https://github.com/RobertsLab/yaamini-virginica/tree/master/analyses). Repository contents and relevant metadata below.

**[OysterTissueInfoSheet_GonadTestRoberts_20171002.xlsx]()**:

Adult *Crassostrea virginica* oysters were reared at two separate pCO<sub>2</sub> levels to see if this drove differential methylation in gonad tissue. 

- Sample ID: Used to identify *C. virginica*
- Date: Date gonad tissue was sampled
- Temp: Temperature at which oysters were reared
- pCO2: Two treatments (ambient: 400, high: 2800)

DNA from tissue samples were then [extracted and quantified](http://onsnetwork.org/kubu4/2017/11/14/dna-isolation-quantification-c-virginica-gonad-gdna/). The MethylMiner kit was used for [MBD-BSseq preparation](https://yaaminiv.github.io/Virginica-MBDSeq-Day3/). Samples were then [sent to ZymoResearch](http://onsnetwork.org/kubu4/2018/03/29/data-recived-crassostrea-virginica-mbd-bs-seq-from-zymoresearch/) for sequencing. 

Original sequences from ZymoResearch [here](http://owl.fish.washington.edu/nightingales/C_virginica/). Sam then looked at [FASTQC results](http://owl.fish.washington.edu/Athaliana/20180409_fastqc_Cvirginica_MBD/) and [trimmed files](http://owl.fish.washington.edu/Athaliana/20180411_trimgalore_10bp_Cvirginica_MBD/). The trimmed files were used in all downstream anaylses.

**[mapping-efficiency.csv](https://github.com/)**:

Mapping efficiency output from `bismark`:

- Sample: 1-5 are from control pCO<sub>2</sub>, 6-10 from high pCO<sub>2</sub>.
- L,0,-0.6; L,0,-0.9; L,0,-1.2: Mapping efficiency (%) from varied `score_min` parameter
