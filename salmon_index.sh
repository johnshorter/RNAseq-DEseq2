#! /bin/bash

#SBATCH -n 1
#SBATCH -N 1
#SBATCH -t 264:00:00
#SBATCH --mem 48000

# salmon index transcriptome
# USAGE: salmon index -t transcripts.fa -i transcripts_index --type quasi -k 31

#may have to make dir and run this in that new dir

FASTA="Mus_musculus.GRCm38.cdna.all.fa.gz"
TRANSCRIPT_FILENAME="salmon_v94"

salmon index -t ${FASTA} -i ${TRANSCRIPT_FILENAME} --type quasi -k 31