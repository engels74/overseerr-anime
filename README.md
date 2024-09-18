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

2. **Run the Docker container using `docker compose`:**
    ```sh
    docker compose -f /choose/path/to/docker-compose.overseerr-anime.yml up -d
    ```

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
