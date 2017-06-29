## Fastcov - A novel algorithm for detecting multiple covariance and clustering of biological sequences

## Introduction

Single genetic mutations are always followed by a set of compensatory mutations. Thus,
multiple changes commonly occur in biological sequences and play crucial roles in maintaining
conformational and functional stability. Although many methods are available to detect single
mutations or covariant pairs, detecting non-synchronous multiple changes at different sites in
sequences remains challenging. Here, we develop a novel algorithm, named Fastcov, to identify
multiple correlated changes in biological sequences using an independent pair model followed by
a tandem model of site-residue elements based on inter-restriction thinking. Fastcov performed
exceptionally well at harvesting co-pairs and detecting multiple covariant patterns. By 10-fold
cross-validation using datasets of different scales, the characteristic patterns successfully classified
the sequences into target groups with an accuracy of greater than 98%. Moreover, we
demonstrated that the multiple covariant patterns represent co-evolutionary modes corresponding
to the phylogenetic tree, and provide a new understanding of protein structural stability. In contrast
to other methods, Fastcov provides not only a reliable and effective approach to identify covariant
pairs but also more powerful functions, including multiple covariance detection and sequence
classification, that are most useful for studying the point and compensatory mutations caused by
natural selection, drug induction, environmental pressure, etc.

### Typical applications

1. Fastcov is able to figure out the characteristic patterns at covariant sites between experimental and control sequences. Moreover, based on the patterns, it can extract the characteristic sequences from unknown data.

2. Fastcov is able to automatically harvest all of the patterns at covariant sites among unknown sequences. For each type of covariant sites, the sequences can be classified according to the corresponding patterns, which is helpful to observe characteristic-unknown data at different levels of mutation.

## Install

Visit [download page](http://yanlilab.github.io/fastcov/download/).

## Usage

Read [manual](http://yanlilab.github.io/fastcov/manual).

## Citation

Wei Shen, Yan Li\*. 
A novel algorithm for detecting multiple covariance and clustering of biological sequences.
*Sci. Rep*. 6, 30425; [doi:10.1038/srep30425](https://doi.org/10.1038/srep30425) (2016).

## Copyright

Copyright © 2015-2016, All Rights Reserved.

This software is free to distribute for academic research.
