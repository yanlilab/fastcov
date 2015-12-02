#!/bin/sh

fastcov -mpp 0.7  -mad 0.6 -mmp 0.45 ABCD_RT_M.fas
fastcov -mpp 0.7  -mad 0.6 -mmp 0.45 TLR4_homo_mus.fas
fastcov -mpp 0.95 -mad 0.6 -mmp 0.45 hsp90_all_align_prep.fas
