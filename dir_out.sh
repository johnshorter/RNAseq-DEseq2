#! /bin/bash

#SBATCH -n 1
#SBATCH -N 1
#SBATCH -t 12:00:00
#SBATCH --mem 8000


# build sample directories for output


SAMPLES="salmon_CCepi.txt"
buildHere="./salmon/quant_quasi/"


while read sampleName;
do
	
	mkdir -p ${buildHere}/${sampleName}

done < $SAMPLES

