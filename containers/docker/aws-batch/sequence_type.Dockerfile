FROM amazonlinux:2

LABEL version="1.4.x"
LABEL authors="robert.petit@emory.edu"
LABEL description="Container image containing requirements for the Bactopia sequence_type process"

RUN yum install -y gzip python3 && yum clean all && rm -rf /var/cache/yum

ENV PATH /mnt/conda/envs/bactopia-sequence_type/bin:/mnt/conda/envs/utils/bin:$PATH
