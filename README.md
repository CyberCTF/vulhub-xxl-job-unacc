# XXL-JOB Executor Unauthenticated RCE

[Vulhub](https://vulhub.org)'s [`xxl-job/unacc`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/xxl-job/unacc) environment, by
phith0n and the Vulhub contributors: XXL-JOB 2.2.0, whose executor RESTful API on port 9999 accepts jobs without an access token, including GLUE shell jobs. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, and
the machines run Vulhub's published images `vulhub/xxl-job:2.2.0-admin` and `-executor`, with MySQL 5.7 ([`build/db/`](build/db)); the environment folder is vendored in [`app/`](app) and the images' Dockerfiles in [`base/`](base).

| Machine | Service |
| --- | --- |
| admin | XXL-JOB 2.2.0 admin on port 8080 |
| executor | XXL-JOB 2.2.0 sample executor on port 9999 |
| db | MySQL 5.7 (internal) |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8080/xxl-job-admin (the admin console); the executor API is on http://localhost:9999/. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/xxl-job/unacc/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
