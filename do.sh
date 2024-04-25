#!/usr/bin/bash

# Lexical
# $1 vocabulary file, one word by line
# $2 text file, spaced words by line, only letters.
# $3 output file, only words in vocabulary by line
# comments with # at start of line
# #n word counts
# #b bigram counts

cat $2 | tr A-Z a-z | tr '\r\t\v' '\n  ' | tr -s ' #' | \
    tr -cd 'a-z\n #' > $2.t

awk -f only_in_list.awk -v vocabulary=$1 $2.t > $3

awk -f counts_in_list.awk $3 > $3.t

grep "#n" $3.t > $3.1x

grep "#b" $3.t > $3.2x

grep "#t" $3.t > $3.3x

sort -r -n -k 3 -t, $3.1x > $3.1s

sort -r -n -k 3 -t, $3.2x > $3.2s

sort -r -n -k 3 -t, $3.3x > $3.3s

