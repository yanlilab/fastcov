# fastcov - Fast Covariant Mutation Detector v1.0

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

## Installation

`fastcov` is implemented in [Golang](https://golang.org/) programming language,
 executable binary files for most popular operating system are freely available
  in [release](https://github.com/yanlilab/fastcov/releases) page.

Just [download](https://github.com/yanlilab/fastcov/releases) executable file
 of your operating system and rename it to  `fastcov.exe` (Windows) or
 `fastcov` (other operating systems) for convenience, and then
 run it in  command-line interface, no any dependency are needed.

You can also add the directory of the executable file to environment variable
`PATH`, so you can run `fastcov` anywhere. For *nix, type:

```
chmod a+x /PATH/OF/FASTCOV/fastcov
echo export PATH=\$PATH:/PATH/OF/FASTCOV >> ~/.bashrc
```
or simply copy it to `/usr/local/bin`

For windows, the simplest way is copy it to `C:\WINDOWS\system32`。

## Usage

    usage: fastcov [-o ] [-t ] [-mrn ] [-mcp ] [-mpp ] [-mad ] [-mmp ] [-j ] [-v] [-h] INPUTFILE

    positional arguments:
      inputfile

    options:
      -o      prefix of output files [infile]
      -t      sequence type PROTEIN/DNA [PROTEIN]
      -mrn    minimum residue number at each site [5]
      -mcp    minimum proportion of any sequence identical to the consensus [0.33]
      -mpp    minimum pairing purity of two sites [0.7]
      -mad    minimum associated degree [0.6]
      -mmp    minimum matching ratio of to the pattern [0.45]
      -j      CPU number [CPU number of your computer]
      -v      verbosely print information
      -h      show help

Positional arguments
- `inputfile` should be aligned protein or DNA sequences in FASTA format file,  produced by multi sequence alignment softwares.

Options

- `-o` defines the prefix of output files, default value is the same as input
 file. e.g, for a input file `test.fa`, output files will be:
```
test.fa.pairs
test.fa.clusters
test.fa.patterns
test.fa.seq2patterns
```
- `-t` defines the sequence type, it should be "PROTEIN" or "DNA".
Default is "PROTEIN"
- `-mrn` is the **m**inimum **r**esidue **n**umber at each site.
 Default value is 5.
- `-mcp` is the **m**inimum **p**roportion of any sequence identical to
the **c**onsensus. Default value is 0.33, i.e. the number of residues
identical to the that of the same position of consensus sequences should be at
 least one third of the length of consensus.
 Sequences that fail to reach this criteria will be discarded.
- `-mpp` defines the **m**inimum **p**airing **p**urity of two sites.
Default is 0.7.
However, it could be rationally reset according to the length of sequences or
a special condition
- `-mad` defined the **m**inimum **a**ssociated **d**egree of one group of
covariant mutation elements. Default is 0.45.
- `-mmp` defines the **m**inimum **m**atching ratio of to the **p**attern in
clustering stage.
- `-j` is the number of CPU. `fastcov` detect your computer and set the
default value with the maximum CPU number. Generally, the bigger the value is,
the faster `fastcov` runs.
- `-v` could print some detail information, like length and number of input
and candidate covariant sites.

## Examples
Taking `examples/ABCD_RT_M.fas` for example.

Quik run:

    fastcov ABCD_RT_M.fas

Terminal Output:

```
Input: ABCD_RT_M.fas

Step 1/5: Reading sequences


Done

Step 2/5: Searching candidate sites

Done

Step 3/5: Searching independent pairs
21115 / 21115 [===================================================================================] 100.00 % 28s

Covariant site pairs saved to file: ABCD_RT_M.fas.pairs

Done

Step 4/5: Searching covariant patterns
52 / 52 [===========================================================================================] 100.00 % 0

Covariant patterns saved to file: ABCD_RT_M.fas.patterns

Done

Step 5/5: Clustering by covariant patterns
Covariant patterns assigned to sequences: ABCD_RT_M.fas.seq2patterns
Sequences clustered by covariant patterns: ABCD_RT_M.fas.clusters

```
The most time-consuming stage is `step 3`, so we add a process bar.

Output files:

    ABCD_RT_M.fas.pairs            # covariant pairs information
    ABCD_RT_M.fas.patterns         # covariant patterns
    ABCD_RT_M.fas.clusters         # sequence clusters by covariant patterns
    ABCD_RT_M.fas.seq2patterns     # covariant patterns of every sequence

## Errors and Solutions

1) No input file given. Please feed `fastcov` a aligned amino acids sequences in FASTA format.

```
$ fastcov
[Error] no input file (aligned amino acids sequences in FASTA format) given.
type "fastcov -h" for help
```

2) Input file is not aligned.

```
[Error] sequence length not equal: 343 (AB014392_Pol-C) != 344. input file should be aligned amino acids sequences in FASTA format
```

3) Illegal characters in sequence. FASTA parsing module of `fastcov` strictly
 check the sequences, you may check input sequence according according to
 the IUPAC nucleotide code (http://www.bioinformatics.org/sms2/iupac.html).
 It may also be caused by unmatch of sequence type (given by `-t`) and actual
 sequence type in FASTA file.

```
Input: test.fa

Step 1/5: Reading sequences
error when reading AB014367_Pol-C: invalid Protein sequence: AB014367_Pol-C
```


## FAQ

Please don't hesitate to email us.


## Authors
Yan Li <liyan.com@gmail.com>, Wei Shen <shenwei356@gmail.com>

## Copyright
Copyright © 2015, All Rights Reserved.

This software is free to distribute for academic research.
