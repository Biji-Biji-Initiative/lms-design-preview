# lms-design-preview

Artifact-only repo containing the Mereka LMS Academy v2 design preview as a static SPA.

Served at:

- `https://lms-prototype.mereka.dev` (canonical, via Coolify on `deploy-apps-01`)

Source of truth for the design content lives in `Biji-Biji-Initiative/mereka-lms-prototype`; this repo is the deployable extract.

## Coolify configuration

- Build pack: `static`
- Publish directory: `/`
- Port: `80`
- Includes a minimal `nginx.conf` so the Coolify static buildpack's `COPY ./nginx.conf` step succeeds.

## Updating

1. Update `index.html` and assets in `mereka-lms-prototype`.
2. Re-extract: `index.html` and `logo-horizontal-*-Mereka.svg` into this repo.
3. Commit + push. Coolify rebuilds on push.

## Governance

Governed by `deploy.mereka.io` (Pattern A — static-from-public-git, per PDR-0012). Registry entry id `mereka-lms-static-prototype`.
