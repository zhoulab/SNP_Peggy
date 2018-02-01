awk -F\" '{for(i=1;i<=NF;i+=2) {gsub(",", "@@@", $i)}}1' OFS= N061_62_64_basedOn_Chr_Start.csv |
awk -F\@@@ '{ print $17}' > chrSearch.txt
