FROM public.ecr.aws/genialis/resolwebio/common:3.2.0

MAINTAINER Resolwe Bioinformatics authors https://github.com/genialis/resolwe-bio

# Cache sesame data
RUN R -e "sesameData::sesameDataCacheAll()"

# Move the data to a folder accessible by the docker user
ARG METHYL_EXPH="/methyl_data"
ARG METHYL_ADDR="/methyl_data/platform_address"

RUN mkdir -p $METHYL_EXPH && mkdir -p $METHYL_ADDR
RUN mv /root/.cache/ExperimentHub $METHYL_EXPH

# Cache platform address (manifest) data. Contents can be downloaded
# from https://zhouserver.research.chop.edu/sesameData but are manually
# added to ensure reproducibility even if the remote files are updated.
COPY assets/platform_adress $METHYL_ADDR

# This container may be working offline, in which case online checking
# for Bioconductor needs to be turned off. This is done by making a
# local version of the config.yaml file and setting the environment
# variable. See ?BiocManager::install for more information.
RUN wget https://bioconductor.org/config.yaml && \
    echo '\n#Bioconductor config file\nBIOCONDUCTOR_CONFIG_FILE=/config.yaml' >> \
    /usr/lib/R/etc/Renviron
