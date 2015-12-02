# fastcov
Fast Covariant Mutation Detector

## Introduction

Covariant mutation is very important to maintain the structural characteristics
 and consequently to maintain the protein conformational and functional
 stability. We developed a novel algorithm to identify correlated changes by
 using an *independent pair model* followed by a *correlated tandem model*.

By contrast to other complex methods, the lightweight fast `fastcov` algorithm
 significantly improves the processing effect. By the applications on the
 genotyping, phylogeny and divergence analysis, the results demonstrate that
 this approach has an excellent performance to detect covariant residue
 patterns. Based on the covariant information, the clustering performance
 reached a sensitivity of 99.42%, a specificity of 99.94% and an accuracy of
 99.77%.

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
Copyright © 2015, All Rights Reserved.

This software is free to distribute for academic research.
