# Fastcov
Fast Covariant Mutation Detector. [http://yanlilab.github.io/fastcov](http://yanlilab.github.io/fastcov)

## Introduction

Single genetic mutation always brings along with a set of compensatory mutations, 
therefore multiple changes commonly occur in the biological sequences, 
which play crucial roles to maintain the conformational and functional stability. 
Although there are a lot of methods to detect single mutation or covariant pairs, 
it is still a great challenge to explore the non-synchronous multiple changes
at different sites in the sequences. 

Here we developed a novel algorithm, named Fastcov, to identify multiple
correlated changes of biological sequences, by using an independent pair 
model followed by a tandem model of site-residue elements, based on a 
inter-restriction thinking. The results showed that Fastcov has excellent
performances on harvesting co-pairs and detecting multiple covariant patterns.
By 10-fold cross-validation in different scales of datasets, 
the characteristic patterns successfully classified the sequences into their
target groups with an accuracy of 98% above. Moreover, it demonstrated the 
multiple covariant patterns represented co-evolutionary modes, corresponding 
to the phylogeny tree, and it provided new understanding of the structural
stability of protein during the evolution. In contrast to other methods, 
Fastcov, as an original algorithm, provides not only a reliable and effective
approach to harvest covariant pairs of site-residues, but also more powerful 
functions including multiple covariance detection and sequence classification.

## Install

`fastcov` is implemented in [Golang](https://golang.org/) programming language,
 executable binary files for most popular operating system are freely available
  in [release](https://github.com/yanlilab/fastcov/releases) page.

Just [download](https://github.com/yanlilab/fastcov/releases) executable file
 of your operating system and rename it to  `fastcov.exe` (Windows) or
 `fastcov` (other operating systems) for convenience, and then
 run it in  command-line interface, no any dependency are needed.

You can also add the directory of the executable file to environment variable
`PATH`, so you can run `fastcov` anywhere.

1. For windows, the simplest way is copy it to `C:\WINDOWS\system32`.

2. For Linux, type:

        chmod a+x /PATH/OF/FASTCOV/fastcov
        echo export PATH=\$PATH:/PATH/OF/FASTCOV >> ~/.bashrc


    or simply copy it to `/usr/local/bin`

## Usage

See [MANUAL](http://yanlilab.github.io/fastcov/manual)

## Please cite
Wei Shen, Yan Li*. A novel algorithm for covariant analysis and clustering of biological sequences (submitted)


## Copyright
Copyright © 2015-2016, All Rights Reserved.

This software is free to distribute for academic research.
