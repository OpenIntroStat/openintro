# Code at the end of this file used in 2018 no longer works.  Bioconductor link
# has been replaced. Number of known genes has increased
# Keeping original coding.mrna.rda for compatibility
# Updated gene list and transcript lengths created using
# Ensemble steps listed below as described on
# https://useast.ensembl.org/info/data/biomart/how_to_use_biomart.html

# Dataset retrieved from Ensemble 25 June 2024, renamed
# from mart_export.txt to mart_export_25jun2024.csv


library(readr)
coding_mrna_2024 <- read_csv("mart_export_25jun2024.csv")


coding_mrna_2024 = rename(coding_mrna_2024,
  chromosome_name = "Gene stable ID",
  external_gene_name = "Chromosome/scaffold name",
  external_transcript_name = "Transcript stable ID",
  transcript_length = "Transcript length (including UTRs and CDS)",
  description = "Gene description"
)


usethis::use_data(coding_mrna_2024, overwrite = TRUE)

# script used in 2018 to retrieve genes, now obsolete.

# source("http://bioconductor.org/biocLite.R")
# biocLite("biomaRt")
#
# library(biomaRt)
# listEnsembl()
#
# #see datasets available
# mart = useEnsembl("ENSEMBL_MART_ENSEMBL")
# listDatasets(mart)
#
# #attribute names
# library(biomaRt)
# ensembl = useEnsembl(biomart="ensembl", dataset="hsapiens_gene_ensembl")
# head(listAttributes(ensembl))
# attributes = listAttributes(ensembl)
#
# #filter for protein-coding transcripts
# filterlist <- list("protein_coding", c(1:21, "X", "Y"))
# coding.mrna <-getBM(attributes=c('chromosome_name', 'external_gene_name', 'external_transcript_name', 'transcript_length', 'description'), filters = c('transcript_biotype', 'chromosome_name'), values = filterlist, mart = ensembl)
#
# devtools::use_data(coding.mrna)
