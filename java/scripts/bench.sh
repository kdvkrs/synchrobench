#!/bin/bash
MAX_THREADS_LOG=11 # threads = 2^(this-1)/2
sbatch --array="0-$MAX_THREADS_LOG%1" synchrobench.job
