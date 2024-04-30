#!/usr/bin/awk

# get the vocabulary
BEGIN {

    FS=" "

    while ( getline < vocabulary ) {
        if (NF == 0 || $1 ~ "^#") continue
        words[$1] = 0
        }

    for (it in words) {
        for (is in words) {
            auto[it,is] = 0.0
            if (is == it) auto[it,is] = 1.0
            }
        }
    
    # csv file

    FS=","
}

{
    # skip empty and comments
    if (NF == 0 || $1 ~ "^#") next

    gsub (" \r","",$3)

    auto[$1,$2] = 0 + $3
    
}

END {
    
    printf " - ,"
    for (it in words) {
        printf " %s,", it
        }
    print " "

    for (it in words) {
        printf " %s,", it
        for (is in words) {
            printf (" %6f,", auto[it,is])
            }
        print " "
        }
}

