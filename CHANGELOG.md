# Changelog

All infrastructure changes are documented here. Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Newest entries at the top.

---

## [2026-05-06]

### Added
- Initialized homelab documentation repository with README, CHANGELOG, CLAUDE.md, system/runbook/lesson templates, and reference stubs.
- [Lesson: Jellyfin LDAP auth broken after Pangolin migration](docs/lessons/2026-05-jellyfin-ldap-pangolin-migration.md)

### Fixed
- Jellyfin LDAP authentication against Authentik. Port 389 was not proxied in Pangolin after migration; resolved by pointing Jellyfin directly at Authentik's internal IP.
