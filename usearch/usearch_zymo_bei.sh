# This script was adapted from the MCSMRT usearch processing: https://github.com/jpearl01/mcsmrt/blob/master/uparse_commands.sh
# Modifications were made to conform to the updated commands in usearch 12
# And also to respect Robert Edgar's suggestion not to use reference-based chimera filtering for OTUs: https://www.drive5.com/usearch/manual/cmd_uchime2_ref.html

# NOTE TO SELF: gunzip the fastq file below first, usearch doesn't speak gzip natively
usearch -fastx_uniques ~/Desktop/LRAS/Data/Zymo/noprimers/filtered/zymo_CCS_99_9.fastq -fastaout Zymo_dereplicated.fa -sizeout
usearch -cluster_otus Zymo_dereplicated.fa -otus Zymo_OTU.fa -uparseout Zymo_uparse.up -relabel OTU_
#usearch -uchime_ref post_OTU.fa -db gold.fa -strand plus -nonchimeras post_OTU_nonchimeras.fa -chimeras post_OTU_chimeras.fa -uchimealns post_OTU_alignment.aln -uchimeout post_OTU_uchime_output.tsv # unneeded and recommended against by REdgar
usearch -usearch_global ~/Desktop/LRAS/Data/Zymo/noprimers/filtered/zymo_CCS_99_9.fastq -db Zymo_OTU.fa -strand plus -id 0.97 -uc Zymo_readmap.uc -otutabout Zymo_OTU_table.tsv -notmatched Zymo_unmapped_userach_global.fa -userout Zymo_usearch_glob_results.tsv -userfields query+target


usearch -fastx_uniques ~/Desktop/LRAS/Data/BEI/noprimers/filtered/SO_BEI-stagLo-16S_CCS-99.9.fq -fastaout BEI_dereplicated.fa -sizeout
usearch -cluster_otus BEI_dereplicated.fa -otus BEI_OTU.fa -uparseout BEI_uparse.up -relabel OTU_
usearch -usearch_global ~/Desktop/LRAS/Data/BEI/noprimers/filtered/SO_BEI-stagLo-16S_CCS-99.9.fq -db BEI_OTU.fa -strand plus -id 0.97 -uc BEI_readmap.uc -otutabout BEI_OTU_table.tsv -notmatched BEI_unmapped_userach_global.fa -userout BEI_usearch_glob_results.tsv -userfields query+target

