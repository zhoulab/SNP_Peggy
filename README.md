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