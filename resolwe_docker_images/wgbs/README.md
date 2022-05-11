# Docker image for WGBS processes

The image is based on the [`public.ecr.aws/genialis/resolwebio/common`](
https://gallery.ecr.aws/genialis/resolwebio/common) image, derived from
the `ubuntu-20.04` version of [`public.ecr.aws/genialis/base`](
https://gallery.ecr.aws/genialis/resolwebio/base) image.

Included bioinformatics tools:
------------------------------
* MethPipe (3.4.3)
* WALT (1.01)
* wigToBigWig (kent-v365)
