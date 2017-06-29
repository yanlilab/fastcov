#!/bin/sh

fastcov -p 0.7 -r 0.45 ABCD_RT_M.aligned.fas

fastcov -p 0.7 -r 0.45 TLR4_homo_mus.aligned.fas

fastcov -p 0.95 -r 0.45 hsp90_all_align_prep.aligned.fas

fastcov -p 0.7 -r 0.45 gapdh_animal_refseq.aln_rename.fas
