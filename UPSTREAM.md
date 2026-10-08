# Upstream

| | |
| --- | --- |
| Project | Vulhub |
| Repository | https://github.com/vulhub/vulhub |
| Environment | `xxl-job/unacc` |
| Version | default branch (Vulhub has no releases) |
| Commit | 8fd63916f7a8711e2e01dda0d27237e4d6175d38 |
| Licence | MIT |

| Here | Vulhub path |
| --- | --- |
| `app/` | [`xxl-job/unacc`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/xxl-job/unacc) |
| `base/xxl-job/2.2.0/` | [`base/xxl-job/2.2.0`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/base/xxl-job/2.2.0): the Dockerfile of `vulhub/xxl-job:2.2.0-admin and -executor` |

The vendored folders are that commit, unchanged. The lab runs Vulhub's published images `vulhub/xxl-job:2.2.0-admin` and `vulhub/xxl-job:2.2.0-executor`, pinned by tag (as Vulhub's own compose file does); their Dockerfiles are vendored under `base/` to show how they are built. Building from `base/` instead would download and compile XXL-JOB from its original sources.

`build/db/Dockerfile` starts from `mysql:5.7` and sets, as `ENV`, the environment value of Vulhub's compose file (Isoloom has no `environment:`).

To update, replace the vendored folders with a newer Vulhub commit, then change this file.
