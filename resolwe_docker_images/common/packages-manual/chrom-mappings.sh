#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

# All files were aquired with create_mapping_file.py available on
# genialis-scripts GitHub Repository.

download_and_verify \
    chrom_mappings \
    assets \
    GRCh38.p12_ensembl2UCSC \
    1722bba20ba1565370cc7d2e0bacf3947b3da213b62efb72bf12c62b8e2df06e \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/GRCh38.p12_ensembl2UCSC.txt \
    '' \
    GRCh38.p12_ensembl2UCSC.txt

download_and_verify \
    chrom_mappings \
    assets \
    GRCh38.p12_NCBI2UCSC \
    e3eaa5fa31301e8f28035ed88552b803e31a4c93a5063f8e78d864193eff77c0 \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/GRCh38.p12_NCBI2UCSC.txt \
    '' \
    GRCh38.p12_NCBI2UCSC.txt

download_and_verify \
    chrom_mappings \
    assets \
    GRCm38.p6_ensembl2UCSC \
    566988707c6ae198266d6bbda38caff16014186ad08d0db28809e9bc2d73ae4d \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/GRCm38.p6_ensembl2UCSC.txt \
    '' \
    GRCm38.p6_ensembl2UCSC.txt

download_and_verify \
    chrom_mappings \
    assets \
    GRCm38.p6_NCBI2UCSC \
    035eabcc5f367260122b0e34d72a0464515d7ec02dc0fb0ba329f6732e004203 \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/GRCm38.p6_NCBI2UCSC.txt \
    '' \
    GRCm38.p6_NCBI2UCSC.txt

download_and_verify \
    chrom_mappings \
    assets \
    rn6_ensembl2UCSC \
    a274bea86b73cc0d96e24e0b4506286f4fd28d4ee9590afa07836478b2ce344b \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/rn6_ensembl2UCSC.txt \
    '' \
    rn6_ensembl2UCSC.txt

# rRNA chromosome names for Homo sapiens
download_and_verify \
    chrom_mappings \
    globin_rrna \
    Homo_sapiens_rRNA \
    4ea6bf407616ad0e934494be51fe767755a5bc07f76e6d0ee3f30eb13c070760 \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/rRNA/Homo_sapiens_rRNA.txt \
    '' \
    Homo_sapiens_rRNA.txt

# rRNA chromosome names for Mus musculus
download_and_verify \
    chrom_mappings \
    globin_rrna \
    Mus_musculus_rRNA \
    775760d053fdabe4248425db6bb3181fe56433151ea5719f0e376608a57635ed \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/rRNA/Mus_musculus_rRNA.txt \
    '' \
    Mus_musculus_rRNA.txt

# rRNA chromosome names for Rattus_norvegicus
download_and_verify \
    chrom_mappings \
    globin_rrna \
    Rattus_norvegicus_rRNA \
    2263632cdd7960058f5d304d29d455d502fbe311c1f69783c6f8b5cca08fa522 \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/rRNA/Rattus_norvegicus_rRNA.txt \
    '' \
    Rattus_norvegicus_rRNA.txt

# globin chromosome names for Homo sapiens
download_and_verify \
    chrom_mappings \
    globin_rrna \
    Homo_sapiens_globin_RNA \
    5b4a699e4ea6ee9d473f1e542ba0002929730d7e55e2db1148947d5b56fa9c7c \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/globin_RNA/Homo_sapiens_globin_RNA.txt \
    '' \
    Homo_sapiens_globin_RNA.txt

# globin chromosome names for Mus musculus
download_and_verify \
    chrom_mappings \
    globin_rrna \
    Mus_musculus_globin_RNA \
    142bd5f98df669c15d09b47df9eb2a9c4dd7a918abda7dd2094fba9b523d68eb \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/globin_RNA/Mus_musculus_globin_RNA.txt \
    '' \
    Mus_musculus_globin_RNA.txt

# globin chromosome names for Rattus norvegicus
download_and_verify \
    chrom_mappings \
    globin_rrna \
    Rattus_norvegicus_globin_RNA \
    2263632cdd7960058f5d304d29d455d502fbe311c1f69783c6f8b5cca08fa522 \
    https://raw.githubusercontent.com/genialis/resolwe-docker-images/ea325619cdcdcc519c284eb804aea7cc73b0b0d1/resolwe_docker_images/common/downloaded_assets/chromosome_mappings/globin_RNA/Rattus_norvegicus_globin_RNA.txt \
    '' \
    Rattus_norvegicus_globin_RNA.txt
