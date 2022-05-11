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

Fixed
-----
