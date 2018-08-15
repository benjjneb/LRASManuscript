# Reproducible Analyses from the Manuscript Introducing DADA2 + PacBio

This repository hosts the reproducible workflow that performed the analyses presented in the manuscript ["High-throughput amplicon sequencing of the full-length 16S rRNA gene with single-nucleotide resolution" by Callahan et al. bioRxiv, 2018](https://www.biorxiv.org/).

Rmarkdown documents are hosted in the root directory. The input sequencing data is not included in the repository for size reasons, and is instead available from the SRA under accession: PENDING. Auxiliary data is included in the `Docs/` directory,RDS files holding intermediate data objects suitable for performing the analyses of the processed sequencing data are in the `RDS/` directory, and figures created by the Rmarkdown documents are in the `Figures/` directory. 

You can run these analyses on your own machine by (1) cloning the repository, (2) obtaining the raw sequencing data, (3) modifying the paths defined at the start of each Rmd document, (4) installing required libraries, and (5) pressing Run! Even without the sequencing data, the analysis portion of each Rmarkdown document can be run using the stored data objects in the `RDS/` directory.

These Rmarkdown documents have also been rendered into html format, and can be viewed in your web browser:

* Classification of sequence variants by decontam [is consistent with expectations based on prior evidence in the human oral microbiome](https://benjjneb.github.io/DecontamManuscript/Analyses/oral_contamination.html).
* Removal of contaminants identified by decontam [dramaticaly reduces kit and sequence-center effecst in a dilution series experiment](https://benjjneb.github.io/DecontamManuscript/Analyses/salter_metagenomics.html).
* [decontam confirms the lack of evidence for a placenta microbiome in a 16S rRNA gene dataset](https://benjjneb.github.io/DecontamManuscript/Analyses/lauder_placenta.html), even amongst the rarest variants.
* decontam corroborated suspicions that [run-specific contaminants contributed to false-positives in exploratory analysis of associations between low-frequency taxa and preterm birth](https://benjjneb.github.io/DecontamManuscript/Analyses/callahan_ptb.html).

## DADA2 and PacBio

The dada2 R package is available through GitHub and Bioconductor. Full PacBio functionality was introduced in version 1.9.1, which currently is available only through Github.

* dada2 GitHub repository: https://github.com/benjjneb/dada2
* dada2 Bioconductor page: https://www.bioconductor.org/packages/release/bioc/html/dada2.html
* dada2 website: https://benjjneb.github.io/dada2/

The dada2 R package is maintained by Benjamin Callahan (benjamin DOT j DOT callahan AT gmail DOT com). Twitter: [\@bejcal](https://twitter.com/bejcal)
