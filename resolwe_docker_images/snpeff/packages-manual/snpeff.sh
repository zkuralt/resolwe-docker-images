#!/bin/bash -e

. /var/cache/build/packages-manual/common.sh

download_and_verify \
    snpeff \
    snpeff \
    5_1 \
    01a244c8043fd4abe0e8087d0d3f1f7e05bdd6edc71df7a315d55cac59fb285d \
    https://snpeff.blob.core.windows.net/versions/snpEff_v\${version}_core.zip \
    snpEff

# build a custom annotation database based on Ensembl 109 data
# write to configuration file
cat << 'EOF' >> snpEff.config
# Custom genome
GRCh38.109.genome : Homo_sapiens
GRCh38.109.reference : ftp://ftp.ensembl.org/pub/release-109/gtf/
GRCh38.109.MT.codonTable : Vertebrate_Mitochondrial
EOF

# download data from Ensembl 109
mkdir -p data/GRCh38.109

wget https://ftp.ensembl.org/pub/release-109/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.toplevel.fa.gz
mv Homo_sapiens.GRCh38.dna.toplevel.fa.gz data/GRCh38.109/sequences.fa.gz
gzip -d data/GRCh38.109/sequences.fa.gz

wget https://ftp.ensembl.org/pub/release-109/gtf/homo_sapiens/Homo_sapiens.GRCh38.109.gtf.gz
mv Homo_sapiens.GRCh38.109.gtf.gz data/GRCh38.109/genes.gtf.gz
gzip -d data/GRCh38.109/genes.gtf.gz

wget https://ftp.ensembl.org/pub/release-109/fasta/homo_sapiens/cds/Homo_sapiens.GRCh38.cds.all.fa.gz
mv Homo_sapiens.GRCh38.cds.all.fa.gz data/GRCh38.109/cds.fa.gz
gzip -d data/GRCh38.109/cds.fa.gz

# main build command
java -jar snpEff.jar build -gtf22 -noCheckProtein -v GRCh38.109

# data cleanup
rm data/GRCh38.109/sequences.fa
rm data/GRCh38.109/genes.gtf
rm data/GRCh38.109/cds.fa

rm -rf clinEff examples

# download prebuilt databases
java -jar snpEff.jar download GRCh37.75 -v
java -jar snpEff.jar download GRCh38.99 -v

mkdir bin

cat << 'EOF' >bin/snpEff
#!/bin/sh

java -Xmx16g -jar /opt/snpeff/snpeff/snpEff.jar "$@"
EOF
chmod +x bin/snpEff

cat << 'EOF' >bin/SnpSift
#!/bin/sh

java -Xmx16g -jar /opt/snpeff/snpeff/SnpSift.jar "$@"
EOF
chmod +x bin/SnpSift

# Ensure data is downloaded during build. If not, fail.
test -d data

add_binary_path \
    snpeff \
    snpeff \
    bin

add_binary_path \
    snpeff \
    snpeff \
    scripts
