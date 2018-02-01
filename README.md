## Introduction

African allele frequencies and hyperlinks to dbSNP were required for ~40,000 reference SNP IDs (rsIDs).

This was achieved using awk and publicly available genomic data.

## Data Source

1000 Genomes was our source of data.

    http://www.internationalgenome.org/data/

This site lead us to 1000 Genome's ftp server which had pre-calculated allele frequencies (AF) for various populations.

    ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/

This information was available for each chromosome.
awk was used to efficiently extract this information into a .csv.

The hyperlinks were created by adding the rsID to the end of an existing link. Excel format is show below:

    =HYPERLINK("https://www.ncbi.nlm.nih.gov/projects/SNP/snp_ref.cgi?rs=<rsID number>", "<rsID>")

## extract_af.awk

Extract allele frequency of a population for RSIDs in 1000 Genomes Project VCF file.

Output format (tab-delimited):

    <rsid> <population allele frequency>

usage:

    $ awk -f extract_afr_af.awk popid=<population ID> <VCF file> > output.txt

## get_rsID_column_as_chrSearch.awk

Extract 'avsnp' column which holds reference SNP ID values. Stores the column as chrSearch.txt

Output format:

    <rsid>

## search_chrSearch.awk

Search for all rsID's in chrSearch. Searches through chr.txt, a file that holds all rsIDs and their allele frequencies.

Output format (comma-separated):

    <rsid>,<population allele frequency>