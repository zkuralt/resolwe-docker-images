##########
Change Log
##########

All notable changes to this project are documented in this file.
This project adheres to `Semantic Versioning <http://semver.org/>`_.

==========
2024-08-29
==========

Changed
-------
- Add GATK (v4.2.4.1) to
  ``public.ecr.aws/genialis/resolwebio/snpeff:3.1.0`` Docker image


==========
2024-09-01
==========

Changed
-------
- Update and pin Python package versions in ``resolwebio/rnaseq:6.3.0`` Docker image
- Update and pin R package versions in ``resolwebio/rnaseq:6.3.0`` Docker image
- Update debian packages in ``resolwebio/rnaseq:6.3.0`` Docker image
- Add arriba version 2.4.0 to ``resolwebio/rnaseq:6.3.0`` Docker image
- Remove unused R packages from ``r-packages.sh`` script


==========
2024-08-08
==========

Changed
-------
- Upgrade `r-base` to version 4.4.1 in ``resolwebio/common:4.2.0`` Docker image 


==========
2024-05-03
==========

Changed
-------
- Upgrade xengsort to version 2.0.5 in 
  ``public.ecr.aws/genialis/resolwebio/xengsort:2.0.0`` Docker image


==========
2024-04-08
==========

Changed
-------
- Add support for Ensembl 109 genome annotation to the
  ``resolwebio/snpeff:3.0.0`` Docker image


==========
2024-04-04
==========

Changed
-------
- Remove Docker image for 10x scRNA-seq


==========
2023-11-16
==========

- Bump Python package to ``lxml==4.9.3`` in 
  ``resolwebio/common:4.1.1`` image 


==========
2023-11-14
==========

- Use ``public.ecr.aws/genialis/resolwe/base:ubuntu-22.04-24102023``
  as a base image for building 
  ``public.ecr.aws/genialis/resolwebio/base:ubuntu-22.04-14112023``.
  The new resolwe/base image includes the newer version of 
  ``resolwe-runtime-utils==3.2.0``.
- Include label with a version tag in 
  ``public.ecr.aws/genialis/resolwebio/base:ubuntu-22.04-14112023`` 
  Docker image DockerFile.
 - Use ``public.ecr.aws/genialis/resolwebio/base:ubuntu-22.04-14112023``
  as a base image in ``resolwebio/common:4.1.0``. Return erroneously removed 
  ``openpyxl`` Python package to this image version.


================
Previous changes
================

Added
-----
- Add assets from Google Drive that are used in ``resolwebio/common``
  Docker image
- Add python2 pip to ``resolwebio/common:3.2.0`` image
- Add assets from Google Drive that are used in ``resolwebio/chipseq``,
  ``resolwebio/dnaseq``, ``resolwebio/rnaseq``, ``resolwebio/wgbs``
  Docker images
- Add ``resolwebio/xengsort:1.0.0`` Docker image
- Create new Docker image ``resolwebio/qc:1.0.0`` and add RNA-SeQC tool (version 2.4.2)
- Add ``collapse_annotation.py`` script to ``resolwebio/qc:1.1.0`` image
- Add Ubuntu 22.04-based ``resolwebio/base`` Docker image
- Add Ubuntu 22.04-based ``resolwebio/common:4.0.0`` Docker image
- Update ``pyparsing`` Python package and add Docker image version tag 
  to the ``resolwebio/common:4.0.1`` Docker image

Changed
-------
- Remove ``resolwebio/slamdunk`` Docker image
- Use files from ``downloaded_assets`` instead of Google Drive for
  building ``resolwebio/common`` Docker image
- Add ``openpyxl`` Python package in ``resolwebio/common:3.1.0``
  Docker image
- Deprecate ``resolwebio/orange`` Docker image
- Use ``downloaded_assets`` instead of Google Drive and pin version of
  R packages ``locfit`` and ``dplyr`` in ``resolwebio/rnaseq:6.1.0``
  Docker image
- Use ``downloaded_assets`` instead of Google Drive in
  ``resolwebio/dnaseq:6.4.0`` Docker image
- Use ``downloaded_assets`` instead of Google Drive and use
  ``resolwebio/common:3.2.0`` as a base image for
  ``resolwebio/wgbs:3.0.0`` Docker image
- Use ``downloaded_assets`` instead of Google Drive, use
  ``resolwebio/common:3.2.0`` as a base image and pin R package versions
  in ``resolwebio/chipseq:6.0.0`` Docker image
- Update ``ChIPQC`` R package version in ``resolwebio/chipseq:6.1.0``
  Docker image
- Use ``resolwebio/common:3.2.0`` as a base image, pin R packages and
  ensure reproducibility by using Sesame cache files saved in assets for
  ``resolwebio/methylation_arrays:1.1.0`` Docker image
- Remove unused ``sra-toolkit`` folder
- Use ``resolwebio/base:ubuntu-20.04-03042021`` as a base image for
  ``resolwebio/latex:3.0.0`` Docker image
- Update STAR version to 2.7.10b and update R packages in
  ``resolwebio/rnaseq:6.2.0`` Docker image
