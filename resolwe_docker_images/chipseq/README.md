# Docker image for ChIP-Seq processes

The image is based on the [`public.ecr.aws/genialis/resolwebio/common`](
https://gallery.ecr.aws/genialis/resolwebio/common) image, derived from
the `ubuntu-20.04` version of [`public.ecr.aws/genialis/base`](
https://gallery.ecr.aws/genialis/resolwebio/base) image.

Included bioinformatics tools:
-----------------------------
* bedClip (kent-v373)
* Bedops (v2.4.32)
* gawk (v1:4.1.3+dfsg-0.1)
* MACS (v1.4.3)
* MACS2 (v2.1.1.20160309)
* run_spp.R (v1.2) (as spp)
* SPP (v1.16)
* wigToBigWig (kent-v364)
* ChIPQC (1.32.3)
