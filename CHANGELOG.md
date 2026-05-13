# Changelog

All infrastructure changes are documented here. Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Newest entries at the top.

---

## [2026-05-12]

### Changed
- Updated Pangolin to v1.18.3.

---

## [2026-05-11]

### Added
- Provisioned pve4: installed pve2's 1 TB SSD into a spare NUC and joined it to the Proxmox cluster as pve4.

### Changed
- Decommissioned pve2 from the Proxmox cluster.
- Reconfigured Proxmox replication jobs for Pangolin, Home Assistant, and Portainer to target pve4 for high availability.

---

## [2026-05-08]

### Fixed
- Removed VEC01 integration from Home Assistant after discovering it was misconfigured to report 240 V per leg, which doubled all power readings. No way to correct historical data. Removed the integration, fixed the HACS app with the correct per-leg voltage value, and re-added it — power numbers are now accurate going forward.

---

## [2026-05-06]

### Added
- Initialized homelab documentation repository with README, CHANGELOG, CLAUDE.md, system/runbook/lesson templates, and reference stubs.
- [Lesson: Jellyfin LDAP auth broken after Pangolin migration](docs/lessons/2026-05-jellyfin-ldap-pangolin-migration.md)

### Fixed
- Jellyfin LDAP authentication against Authentik. Port 389 was not proxied in Pangolin after migration; resolved by pointing Jellyfin directly at Authentik's internal IP.
