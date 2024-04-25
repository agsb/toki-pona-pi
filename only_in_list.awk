#!/usr/bin/awk

# get the vocabulary
BEGIN {
    FS=" "
    while ( getline < vocabulary ) {
        if (NF == 0 || $1 ~ "^#") continue
        words[$1] = 0
        }
}   

{
    # skip empty and comments
    if (NF == 0 || $1 ~ "^#") next

    # clean line
    once = 0

    for (it=1; it <= NF; it++) {
        for ( is in words ) {
            if ($it == is) {
                printf " %s", is 
                once++
                break
                }
            }
        }    

    if (once > 0) {
        print " " 
        }

}

END {
    
}

