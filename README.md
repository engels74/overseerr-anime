# Overseerr (with Anime Instance support)

## ⚠️ Deprecation and security notice

**This Docker image is deprecated and will not receive further updates.**
`overseerr-anime` was built from an old Overseerr pull request for
anime-specific instances. Upstream Overseerr and Jellyseerr have since merged
into the maintained [Seerr](https://github.com/seerr-team/seerr) project.

Do not use this image for new installs. Existing deployments should be migrated
away from this image because it may contain unfixed CVEs inherited from the old
Overseerr dependency stack. The image may be removed/deprecated more aggressively
in the future.

<details>
<summary>Read more: known CVE context</summary>

The final v1.34.0-era Overseerr Anime build contains `axios` 1.3.4. GitHub
advisory
[GHSA-fvcv-3m26-pcqx](https://github.com/axios/axios/security/advisories/GHSA-fvcv-3m26-pcqx)
tracks CVE-2026-40175, an Unrestricted Cloud Metadata Exfiltration vulnerability
via a header injection chain. The advisory lists axios `>=1.0.0` as vulnerable
and `>=1.15.0` as patched. This is separate from the axios package hijack
incident.

Seerr patched this in
[v3.1.1](https://github.com/seerr-team/seerr/releases/tag/v3.1.1) or later.
The v3.1.1 release was published on 2026-04-13. This Docker image will not
receive that dependency update.

</details>

There is no exact drop-in replacement for this image today:

- **Recommended path:** migrate to the official
  [Seerr](https://github.com/seerr-team/seerr) image and follow the
  [Seerr migration guide](https://docs.seerr.dev/migration-guide/).
- **Closest workaround:** [Redirecterr](https://github.com/varthe/Redirecterr)
  can route requests to different Sonarr/Radarr instances, but it is
  webhook-driven and can conflict with any existing Seerr/Overseerr webhook
  workflow.
- **Future built-in option:** Seerr PR
  [#2452](https://github.com/seerr-team/seerr/pull/2452) is intended to add
  routing-rule behavior, but it is still a draft and has not been merged.

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

Historical documentation for "Overseerr (Anime Support)" is located at the old
[Pull Request](https://github.com/sct/overseerr/pull/3664) page. Treat it as
archival only; this image is no longer maintained.

For more information about the Docker image, visit [engels74.net](https://engels74.net/containers/overseerr-anime).

## 🐋 Docker Image

### Docker Compose

This compose example is retained only for existing deployments that need to
identify their current image. Do not use it for new installs.

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
     `:release` and `:latest` point at the final archived build from the
     [`feature-default-anime-instance-checkbox-release`](https://github.com/engels74/overseerr-anime-source/tree/feature-default-anime-instance-checkbox-release)
     branch. No future security or dependency updates are planned.

2. **Run the Docker container using `docker compose`:**

   ```sh
   docker compose -f /choose/path/to/docker-compose.overseerr-anime.yml up -d
   ```

## 🌿 Branch and Workflow

This repository is now archived for practical purposes:

- **`feature-default-anime-instance-checkbox-release`** (`:release` / `:latest`):  
  Historical branch used for the final `overseerr-anime` build.

Automatic upstream rebases and image updates are no longer planned.

## 🆘 Support

This image is no longer maintained. Please migrate to
[Seerr](https://github.com/seerr-team/seerr) where possible. If you need
request-routing behavior, evaluate
[Redirecterr](https://github.com/varthe/Redirecterr) or follow Seerr PR
[#2452](https://github.com/seerr-team/seerr/pull/2452).

## 💻 Source Code

- **Project Source Code**: [engels74/overseerr-anime-source](https://github.com/engels74/overseerr-anime-source)
- **Docker Image Source**: [engels74/overseerr-anime](https://github.com/engels74/overseerr-anime)

## 🌟 Acknowledgements

Thanks to hotio for the Docker image patterns this image was originally based
on. This project is now deprecated, so please do not treat stars or pulls as a
signal of active maintenance.
