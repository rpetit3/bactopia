FROM nfcore/base:1.12.1

LABEL base.image="nfcore/base:1.12.1"
LABEL software="Bactopia - qc_reads"
LABEL software.version="1.6.1"
LABEL description="A flexible pipeline for complete analysis of bacterial genomes"
LABEL website="https://bactopia.github.io/"
LABEL license="https://github.com/bactopia/bactopia/blob/master/LICENSE"
LABEL maintainer="Robert A. Petit III"
LABEL maintainer.email="robert.petit@emory.edu"
LABEL conda.env="bactopia/conda/linux/qc_reads.yml"
LABEL conda.md5="78678592b12fbd4e140f39b6904034d8"

COPY conda/linux/qc_reads.yml /
RUN conda env create -q -f qc_reads.yml && conda clean -y -a
ENV PATH /opt/conda/envs/bactopia-qc_reads/bin:$PATH
