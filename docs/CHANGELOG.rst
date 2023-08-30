##########
Change Log
##########

All notable changes to this project are documented in this file.
This project adheres to `Semantic Versioning <http://semver.org/>`_.


==========
Unreleased
==========

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

Fixed
-----
