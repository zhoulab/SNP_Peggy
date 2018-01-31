{
    if (/^#/) { next }
    if ($3 != ".") {
        s1 = substr($8, match($8, popid) + length(popid) + 4)
        af = substr(s1, 0, match(s1, ";") - 1)
        print $3 "\t" af
    }
}