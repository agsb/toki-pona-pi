# toki-pona-pi

( this file is a stub )

Some statistical programs about Toki Pona. [https://tokipona.org/] and [https://en.wikipedia.org/wiki/Toki_Pona]

Steven D. Rogers, "One of the language's main goals is a focus on minimalism. It is designed to express maximal meaning with minimal complexity."

## Toki Pona

The Toki Pona (TP) conlang is minimal both in the vocabulary (with only 14 letters and 124 lemmas) and in the (about) 10 syntax rules.

The language have glyphs for each word and each word refer to a concept and multiple meanings.

Renato Fabbri, "Basic concepts and tools for the Toki Pona minimal and constructed language: description of the language and main issues; analysis of the vocabulary; text synthesis and syntax highlighting; Wordnet synsets; [https://arxiv.org/abs/1712.09359]

## Vocabularies and Dictionaries

Most of meanings of Toki Pona are made by using words as concepts, associating concepts to describing things. The use and order of words does specif a combination for translate and transmit ideas.

By using common toki pona texts and calculating the correlation coefficients between words in sequence, shows most used bigrams. The composition of words is a common productive method to create predicates without concatenation of words. As Toki Pona users does.

## Programs

By simplicity the program is made in awk, with a vocabulary reference, a list of words one by line, and a text source, with lines composed by words separated by spaces, as inputs, and outputs a parsed text, with words and bigrams counts.

Some clean processing of files, removing non a-z characters, translating to lowercase and sort lines, 
