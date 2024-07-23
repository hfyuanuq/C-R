#!/bin/bash --login

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=80G
#SBATCH --job-name=Match
#SBATCH --time=18:00:00
#SBATCH --partition=general
#SBATCH --account=a_degnan
#SBATCH -e bedtools.scan.error


module load bedtools 

bedtools intersect -a merged_peaks.bed -b HF.34hps.Oa.val.700_filter.rmdup.bam -c > HF.34hps.Oa_counts.bed