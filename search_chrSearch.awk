awk 'FNR==NR{a[$1]=$2; next} {
                                  if (a[$1] != "")
                                    {
                                      print $1 "\t" a[$1]
                                    }
                                  else
                                    {
                                      print $1 "\t ."
                                    }
                            }' Filtered/chr.txt chrSearch.txt
