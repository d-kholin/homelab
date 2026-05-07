# Homelab Documentation

This repository is the canonical reference for the personal homelab: what runs, how it was set up, what broke, and what was learned. It contains no code or compose files — only documentation.

## Folder map

| Path | Purpose |
|---|---|
| `docs/systems/` | Stable per-system reference docs; one file per major system |
| `docs/runbooks/` | Procedural guides — "when X, do Y"; copy-pasteable steps |
| `docs/lessons/` | Append-only incident and learning records; dated files |
| `reference/` | Environment-wide context: network topology, DNS, endpoints |
| `CHANGELOG.md` | Running log of infrastructure changes, newest at top |

## How to add a new entry

### Changelog entry

Open `CHANGELOG.md`, add a new `## [YYYY-MM-DD]` block at the top (after the header), and list changes under the appropriate category (`Added`, `Changed`, `Fixed`, `Removed`, `Security`).

### Lesson

1. Copy `docs/lessons/_template.md` to `docs/lessons/YYYY-MM-<slug>.md`.
2. Fill all required sections: Problem, Root cause, Resolution, What I'd check first next time, References.
3. Add a corresponding `CHANGELOG.md` entry referencing the new file.
4. Add a `Related` link in the affected system doc under `docs/systems/`.

### System doc

1. Copy `docs/systems/_template.md` to `docs/systems/<system-name>.md`.
2. Fill all sections. Leave sections blank rather than omitting them.
3. Link from this README is optional; link from related runbooks and lessons is expected.

## Conventions

- **Dates:** ISO 8601 only — `YYYY-MM-DD`.
- **Filenames:** lowercase-kebab-case. Lesson files must start with `YYYY-MM-`.
- **Links:** relative only (e.g. `../systems/authentik.md`).
- **Secrets:** never commit credentials, keys, tokens, IPs of public endpoints, or cert material. Document the variable name or shape only.
- **Markup:** Markdown throughout; no raw HTML unless there is no Markdown equivalent.
