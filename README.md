# Overseerr (with Anime Instance support)

<p align="center">
  <img src="https://i.imgur.com/BcvImhI.png" alt="Overseerr" style="width: 25%;"/>
</p>

<p align="center">
  <a href="https://github.com/engels74/overseerr-anime-source/releases"><img src="https://img.shields.io/github/v/tag/engels74/overseerr-anime-source?sort=semver" alt="GitHub tag (SemVer)"></a>
  <a href="https://github.com/engels74/overseerr-anime/blob/master/LICENSE"><img src="https://img.shields.io/badge/License%20(Image)-GPL--3.0-orange" alt="License (Image)"></a>
  <a href="https://github.com/sct/overseerr/blob/develop/LICENSE"><img src="https://img.shields.io/badge/License%20(Source)-MIT-green" alt="License (Source)"></a>
  <a href="https://hub.docker.com/r/engels74/overseerr-anime"><img src="https://img.shields.io/docker/pulls/engels74/overseerr-anime.svg" alt="Docker Pulls"></a>
  <a href="https://github.com/engels74/overseerr-anime-source/stargazers"><img src="https://img.shields.io/github/stars/engels74/overseerr-anime-source.svg" alt="GitHub Stars"></a>
</p>

## 📖 Documentation

All the documentation for the "Oveerseerr (Anime Support)" is located at the active [Pull Request](https://github.com/sct/overseerr/pull/3664) page.

For more information about the Docker image itself, you can visit [engels74.net](https://engels74.net/containers/overseerr-anime).

## 🐋 Docker Image

### Docker Compose

To get started with Overseerr (with Anime Instance Support) using Docker, follow these steps:

1. **Use this Docker Compose example**
    ```yaml
    services:
      overseerr-anime:
        container_name: overseerr-anime
        image: ghcr.io/engels74/overseerr-anime
        ports:
          - "5055:5055"
        environment:
          - PUID=1000
          - PGID=1000
          - UMASK=002
          - TZ=Etc/UTC
          - WEBUI_PORTS=5055/tcp,5055/udp
        volumes:
          - /<host_folder_config>:/config
    ```

   - **Tag Options**:
     - `:release` (or `:latest`): The stable version, based on the [`feature-default-anime-instance-checkbox-release`](https://github.com/engels74/overseerr-anime-source/tree/feature-default-anime-instance-checkbox-release) branch.
     - `:nightly`: The nightly version, based on the [`feature-default-anime-instance-checkbox-nightly`](https://github.com/engels74/overseerr-anime-source/tree/feature-default-anime-instance-checkbox-nightly) branch.

2. **Run the Docker container using `docker compose`:**
    ```sh
    docker compose -f /choose/path/to/docker-compose.overseerr-anime.yml up -d
    ```

## 🌿 Branches and Workflows

This repository maintains two main branches, each with its own purpose and automated workflows. Both branches include the changes from the original [Pull Request](https://github.com/sct/overseerr/pull/3664), but they differ in how they incorporate updates from their respective upstreams.

### Branches
1. **`feature-default-anime-instance-checkbox-release` (`:release`)**  
   - **Source**: This branch is rebased daily from the `thempc/overseerr` repository's `feature-default-anime-instance-checkbox` branch, which is the source of the original pull request.  
   - **Purpose**: It provides a stable version of the changes from the pull request, directly from the PR author's repository.  
   - **Docker Tag**: `:release` (also aliased as `:latest`).

2. **`feature-default-anime-instance-checkbox-nightly` (`:nightly`)**  
   - **Source**: This branch is rebased daily from the `sct/overseerr` repository's `develop` branch (the original Overseerr repository) and then merges or rebases the changes from the `thempc/overseerr` pull request.  
   - **Purpose**: It ensures that the changes from the pull request are always updated with the latest developments from the original Overseerr repository, making it ideal for testing the latest features.  
   - **Docker Tag**: `:nightly`.

### Workflows
Two GitHub Actions workflows automate the rebasing process:

1. **`rebase-stable.yml`**  
   - **Purpose**: Automatically rebases the `feature-default-anime-instance-checkbox-release` branch from `thempc/overseerr`'s `feature-default-anime-instance-checkbox` branch.  
   - **Schedule**: Runs daily at midnight UTC.  

2. **`rebase-nightly.yml`**  
   - **Purpose**: Automatically rebases the `feature-default-anime-instance-checkbox-nightly` branch from `sct/overseerr`'s `develop` branch and incorporates the changes from the `thempc/overseerr` pull request.  
   - **Schedule**: Runs daily at midnight UTC.  

These workflows ensure that both branches stay up-to-date with their respective upstreams while maintaining the changes from the original pull request.

## 🆘 Support

If you need assistance, please write in the active pull request. It can be [found here](https://github.com/sct/overseerr/pull/3664).

## 💻 Source Code

- **Project Source Code**: The source code for the "Overseerr (Anime Support)" project is hosted at [engels74/overseerr-anime-source](https://github.com/engels74/overseerr-anime-source).

- **Docker Image Source**: The source files for building the Docker image are hosted at [engels74/overseerr-anime](https://github.com/engels74/overseerr-anime). If you can't find what you're looking for in the `master` branch, check other branches.

## 🌟 Show your support

You can show your support by:
- Giving us a star on Docker Hub or GitHub
- Making a [donation](https://hotio.dev/donate) to hotio, as he's the genius behind the Docker images

Your support is greatly appreciated!
