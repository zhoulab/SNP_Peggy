## extract_af.awk

Extract allele frequency of a population for RSIDs in 1000 Genomes Project VCF file.

Output format (tab-delimited):

    <rsid> <population allele freequency>

usage:

    $ awk -f extract_afr_af.awk popid=<population ID> <VCF file> > output.txt
