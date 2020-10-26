# Reproducible Analyses from the Manuscript Introducing DADA2 + PacBio

This repository hosts the reproducible workflow that performed the analyses presented in the manuscript ["High-throughput amplicon sequencing of the full-length 16S rRNA gene with single-nucleotide resolution" by Callahan et al. Nucleic Acids Research, 2019](https://doi.org/10.1093/nar/gkz569).

Rmarkdown documents are hosted in the root directory. The input sequencing data is not included in the repository for size reasons, and is instead available from the SRA under Bioproject accession PRJNA521754. Auxiliary data is included in the `Docs/` directory, RDS files holding intermediate data objects suitable for performing the analyses of the processed sequencing data are in the `RDS/` directory, and figures created by the Rmarkdown documents are in the `Figures/` directory. 

You can run these analyses on your own machine by (1) cloning the repository, (2) obtaining the raw sequencing data, (3) modifying the paths defined at the start of each Rmd document, (4) installing required libraries, and (5) pressing Run! Even without the sequencing data, the analysis portion of each Rmarkdown document can be run using the stored data objects in the `RDS/` directory.

These Rmarkdown documents have also been rendered into html format, and can be viewed in your web browser:

* [Analysis of the Zymo mock community](https://benjjneb.github.io/LRASManuscript/LRASms_Zymo.html).
* [Analysis of the HMP mock community](https://benjjneb.github.io/LRASManuscript/LRASms_HMP.html).
* [Analysis of the replicate fecal samples](https://benjjneb.github.io/LRASManuscript/LRASms_fecal.html).
* [Re-analysis of the S. aureus data from Wagner 2016](https://benjjneb.github.io/LRASManuscript/LRASms_Saureus.html).

## DADA2 and PacBio

The dada2 R package is available through GitHub and Bioconductor. Full PacBio functionality was introduced in version 1.9.1, with additional improvements in subsequent releases.

* dada2 GitHub repository: https://github.com/benjjneb/dada2
* dada2 Bioconductor page: https://www.bioconductor.org/packages/release/bioc/html/dada2.html
* dada2 website: https://benjjneb.github.io/dada2/

The dada2 R package is maintained by Benjamin Callahan (benjamin DOT j DOT callahan AT gmail DOT com). Twitter: [\@bejcal](https://twitter.com/bejcal)
