#!/usr/bin/awk

BEGIN {
    FS=" "
    }

# process 
{

    # skip empty and comment lines

    if (NF == 0 || $1 ~ /^#/ ) next

    # skip orphan words

    if (NF < 2) next

    # counts words

    for (it=1; it <= NF; it++) {
        words[$(it)]++
        }

    # counts bigrams

    for (it=1; it < NF; it++) {
        ngram = $(it) " " $(it+1)
        pairs[ngram]++
        }    

    if (NF < 3) next

    # counts trigrams

    for (it=1; it < NF - 1; it++) {
        ngram = $(it) " " $(it+1) " " $(it+2)
        trins[ngram]++
        }    

    }

END {
    
    # print counts

    for ( is in words ) {
        print "#n, " is ", " words[is]
        }
    
    for ( is in pairs ) {
        print "#b, " is ", " pairs[is]
        }
    
    for ( is in trins ) {
        print "#t, " is ", " trins[is]
        }
    
    }

