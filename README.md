# toki-pona-pi

( this file is a stub )

Some statistical programs about Toki Pona. [https://tokipona.org/] and [https://en.wikipedia.org/wiki/Toki_Pona]

Steven D. Rogers, "One of the language's main goals is a focus on minimalism. It is designed to express maximal meaning with minimal complexity."

## Toki Pona

The Toki Pona (TP) conlang is minimal both in the vocabulary, with only 14 letters and 124 lemmas, and about 10 syntax rules.

The language have glyphs for each word and each word refer to a concept and multiple meanings.

Renato Fabbri, "Basic concepts and tools for the Toki Pona minimal and constructed language: description of the language and main issues; analysis of the vocabulary; text synthesis and syntax highlighting; Wordnet synsets; [https://arxiv.org/abs/1712.09359]

## Vocabularies and Dictionaries

Most of meanings of Toki Pona are made by using words as concepts and associating concepts to describing things. The use and order of words does a specif  combination for translate and transmit ideas.

By using common toki pona texts and calculating the correlation coefficients between words in sequence, the most used ngrams are showed. . 

The lexicalization [https://sona.pona.la/wiki/Lexicalization] is against the philosophy of Toki Pona, which prefer personal signification against patterns of any dictionary. 

But the common use of composition of words is inherent to any language, as productive method to create predicates without create new words by concatenation.

## Programs

By simplicity the program is made in awk, with a vocabulary reference, a list of words one by line, and a text source, with lines composed by words separated by spaces, as inputs, and outputs a parsed text, with words and bigrams counts.

Some clean processing of files, removing non a-z characters, translating to lowercase and sort lines.

Those programs can be used for statistics of any language.

## Corpus

Got a Toki Pona corpus from tatoeba.org [https://tatoeba.org/] tatoeba.tok, with 56517 lines and 547408 words.

Made two corpus, with and without particules (a, ala, e, kin, la, li, lon, nanpa, o, pi, seme) to processing statistcs.

More analysis is necessary to contextual use ala and seme. (In progress)

## Be binary ?

The 124 glyphs of Toki Pona, plus null, space, new line and full stop, could be represented by a byte. 

Reserving 0x00 for null, 0x01 for space, 0x02 new line, 0x03 for full stop.

Reserving 0x04 to 0x0E for the 11 particules: a, ala, e, kin, la, li, lon, nanpa, o, pi, seme.

Next 0x0F to 0xFF are used for other glyphs sorted by alphabetic, frequency or any definided criteria.
    
The 124 words in Toki Pona can be represented as one byte. 
