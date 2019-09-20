#! /bin/bash

#SBATCH -n 8
#SBATCH -N 1
#SBATCH -t 100:00:00
#SBATCH --mem 48000


# salmon quantification quasi-mapping

SAMPLES="/nas/longleaf/home/shorter/ccepi_rnaseq/salmon/salmon_CCepi.txt"
transcripts="/nas/longleaf/home/shorter/ccepi_rnaseq/salmon/salmon_v94/"
reads="/nas/longleaf/home/shorter/ccepi_rnaseq"
output="/nas/longleaf/home/shorter/ccepi_rnaseq/salmon/quant_quasi"
threads=8
# ISP (Paired-end: -fr-firststrand)
#LIBTYPE="ISR"
#SF (a stranded single-end protocol where the reads come from the forward strand)
LIBTYPE="SF"

module add salmon

while read sample1;
do

	salmon quant -p ${threads} -i ${transcripts} -l ${LIBTYPE} \
	-r ${reads}/${sample1}*L003_R1_001.fastq.gz ${reads}/${sample1}*L004_R1_001.fastq.gz \
	-o ${output}/${sample1}

done < $SAMPLES
