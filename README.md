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

All documentation for "Overseerr (Anime Support)" is located at the active [Pull Request](https://github.com/sct/overseerr/pull/3664) page.

For more information about the Docker image, visit [engels74.net](https://engels74.net/containers/overseerr-anime).

## 🐋 Docker Image

### Docker Compose

To get started with Overseerr (with Anime Instance Support) using Docker, follow these steps:

1. **Use this Docker Compose example:**

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
     Use `:release` or `:latest` for the stable version, which is based on the [`feature-default-anime-instance-checkbox-release`](https://github.com/engels74/overseerr-anime-source/tree/feature-default-anime-instance-checkbox-release) branch.

2. **Run the Docker container using `docker compose`:**

   ```sh
   docker compose -f /choose/path/to/docker-compose.overseerr-anime.yml up -d
   ```

## 🌿 Branch and Workflow

This repository now maintains a single main branch:

- **`feature-default-anime-instance-checkbox-release`** (`:release` / `:latest`):  
  This branch is rebased daily from the `sct/overseerr` repository's `master` branch, applying the anime instance support changes to the latest official release.

A GitHub Actions workflow (`rebase-stable.yml`) automates the rebasing process, ensuring the branch stays up-to-date with upstream changes while maintaining the anime support features.

## 🆘 Support

If you need assistance, please write in the active pull request, which can be [found here](https://github.com/sct/overseerr/pull/3664).

## 💻 Source Code

- **Project Source Code**: [engels74/overseerr-anime-source](https://github.com/engels74/overseerr-anime-source)
- **Docker Image Source**: [engels74/overseerr-anime](https://github.com/engels74/overseerr-anime)

## 🌟 Show your support

You can show your support by giving us a star on Docker Hub or GitHub, or by making a [donation](https://hotio.dev/donate) to hotio, who is the genius behind the Docker images.

Your support is greatly appreciated!
