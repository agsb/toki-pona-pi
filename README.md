# toki-pona-pi

01/05/2024  I'm in vacancy to refresh some ideas.

( this file is a stub )

Some statistical programs for frequency analysis about [Toki Pona](https://en.wikipedia.org/wiki/Toki_Pona). Want know more about [Toki Pona](https://tokipona.org/) ?
 
Steven D. Rogers, said "One of the language's main goals is a focus on minimalism. It is designed to express maximal meaning with minimal complexity."

## Toki Pona

The Toki Pona (TP) conlang is minimal language, both in the vocabulary, with 14 letters and 124 lemmas, and about only 10 syntax rules.

The language also have glyphs for each word and each word refer to a concept with multiple meanings. ![ghlyps for toki-pona-by-sowelinasa](https://github.com/agsb/toki-pona-pi/assets/14941647/18a2b844-3b46-46c8-b955-c91870d9100d)

Renato Fabbri, made a methodologic study in "Basic concepts and tools for the Toki Pona minimal and constructed language: description of the language and main issues; analysis of the vocabulary; text synthesis and syntax highlighting; Wordnet synsets;" [https://arxiv.org/abs/1712.09359]

## Vocabularies and Dictionaries

Most of meanings of Toki Pona are made by using words as concepts and associating concepts to describing things. 

The use and order of words does combinations for translate and transmit ideas.

The lexicalization [https://sona.pona.la/wiki/Lexicalization] is against the philosophy of Toki Pona, which prefer personal signification against patterns of any dictionary. 

But the common use of composition of words is inherent to any language, as productive method to create predicates without create new words by concatenation.

By using common toki pona texts and calculating the frequency of words and the frequency of words in sequence, the most used ngrams are showed. These frequencies are the most used auto-correlation concepts.

## Programs

By simplicity the programs use bash, tr and awk, with uses a vocabulary reference (a list of words one by line), a text source (with lines composed by words separated by spaces), as inputs, and outputs a parsed text with only the words in vocabulary, and a file with counts for words and bigrams.

Some clean processing of files, removing non a-z characters, translating to lowercase and sort lines are done before processing.

Note: Those programs can be used for statistics of any language.

## Corpus

Got a Toki Pona corpus tatoeba.tok from [tatoeba.org](https://tatoeba.org/), with 56517 lines and 547408 words.

### Frequency

Please look for [Frequency Analysis](https://github.com/agsb/toki-pona-pi/blob/main/Stats.md)

## Be binary ?

The 124 glyphs of Toki Pona, plus null, space, new line and full stop, could be represented by a byte. 

Reserving 0x00 for null, 0x01 for space, 0x02 new line, 0x03 for full stop (as this one --->).

Reserving 0x04 to 0x0E for the 11 particules: a, ala, e, kin, la, li, lon, nanpa, o, pi, seme.

Next 0x0F to 0xFF are used for other glyphs sorted by alphabetic, frequency or any definided criteria.
    
The 124 words in Toki Pona can be represented as one byte. 

... and no more symbols.

### More 


