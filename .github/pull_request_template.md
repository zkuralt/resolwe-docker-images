# Build Docker image using GitHub Actions

## Updating an image
To update an existing image, you should make sure these steps are made:

* [ ] Add or modify versions of tools or their hashes in corresponding `.txt` or `.sh` files
* [ ] Note changes in `README.md` of the corresponding Docker image folder
* [ ] Note changes in `docs/CHANGELOG.rst`
* [ ] Bump `TAG` version in `build.env`
* [ ] (optionally) Bump `BASE_IMAGE` in `build.env`
* [ ] Build your image locally to make sure it builds successfully
* [ ] Validate the image by using it in a process (in i.e. `resolwe-bio`)

## Creating a new image
If you are creating a new Docker image (folder), you should follow at least these steps to successfully build and have your pull request approved:

* [ ] A corresponding image folder/project needs to be created on AWS ECR (contact DevOps) before a push is made.
* [ ] Prepare all necessary files to build the image (see other examples in this repository)
* [ ] Create, `build.env` file (in the same folder as `Dockerfile`) which includes the following tags:

    * `BASE_IMAGE` is the image used to build your Dockerfile, i.e. `BASE_IMAGE=public.ecr.aws/genialis/resolwebio/base:ubuntu-22.04-14112023`.
    * `REPOSITORY` is the name of the image once built, for example `REPOSITORY=resolwebio/common`.
    * `TAG` will be the tag of the image, i.e. `TAG=common:0.0.0`.
  
* [ ] Add a repository to _on > workflow_dispatch > inputs > IMAGE > options_ in `.github/workflows/docker_build.yml`. This will enable the option to build this specific image under Actions > Workflows > Build docker images. Example of `base` and `common` images under options:
  ```
  on:
    workflow_dispatch:
      inputs:
        SUPPORTED_PLATFORMS:
          default: 'linux/amd64'
          type: choice
          options:
          - 'linux/amd64'
          - 'linux/amd64,linux/arm64'
        IMAGE:
          type: choice
          options:
            - 'base'
            - 'common'
  ```

See an example of this in i.e. [this pull request](https://github.com/genialis/resolwe-docker-images/pull/26/files).