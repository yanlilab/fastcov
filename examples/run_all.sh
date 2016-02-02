#!/bin/sh

fastcov -p 0.7  -d 0.6 -r 0.45 ABCD_RT_M.aligned.fas
fastcov -p 0.7  -d 0.6 -r 0.45 TLR4_homo_mus.aligned.fas
fastcov -p 0.95 -d 0.6 -r 0.45 hsp90_all_align_prep.aligned.fas
