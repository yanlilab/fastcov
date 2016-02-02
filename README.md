# fastcov
Fast Covariant Mutation Detector. http://yanlilab.github.io/fastcov

## Introduction

Covariant mutations are very important to maintain the structural
characteristics and consequently to maintain the protein conformational and
functional stability. In this study, we developed a novel algorithm to
identify correlated changes by using an independent pair model followed by
a correlated tandem model.

Fastcov is based on a correlation idea of interaction restriction
among site-residue elements, which is very suitable for natural co-variances
analysis. In contrast to other complex methods, the lightweight and fast
Fastcov algorithm significantly improves the processing efficiency.

By tests on the genotyping, phylogeny and divergence analysis, the results
demonstrated that this approach has an excellent performance on detecting
covariant residue patterns. Based on the covariant pattern clustering,
the genotyping performance reached a sensitivity of 99.42%, a specificity
of 99.94% and an accuracy of 99.77%; The covariant patterns displayed
co-evolutionary modes corresponding to the phylogeny tree;
Moreover, it found an important evidence involving in the structural stability
of protein during the evolution. As an original algorithm, Fastcov provides
not only a fast and reliable approach to achieve the data analysis,
but also much more powerful functions including multiple variance detection
and evolutionary classification.

## Install
 Fastcov is very easy to install, no dependencies are needed. It is implemented
  in [Golang](https://golang.org/) programming language.

 Just download the single binary executable file of your platform in [release](https://github.com/yanlilab/fastcov/releases) page
 and run it in command-line interface.

## Usage
 See [MANUAL](https://github.com/yanlilab/fastcov/blob/master/MANUAL.md)

## Please cite
Wei Shen, Yan Li*. A novel algorithm for covariant analysis and clustering of biological sequences (submitted)


## Copyright
Copyright © 2015-2016, All Rights Reserved.

This software is free to distribute for academic research.
