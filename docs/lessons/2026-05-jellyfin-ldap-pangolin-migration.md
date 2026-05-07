# Jellyfin LDAP auth broken after Pangolin migration

**Date:** 2026-05-06
**Systems:** Jellyfin, Authentik, Pangolin
**Tags:** ldap, auth, reverse-proxy, migration, jellyfin, authentik, pangolin

## Problem

Jellyfin LDAP authentication against Authentik stopped working. Users received "invalid password" errors. The Jellyfin LDAP integration reported a generic error with no further detail.

## Root cause

During migration to Pangolin as the reverse proxy, port 389 (LDAP) was not added as a proxy rule. Jellyfin was pointed at Authentik via the proxied hostname, but Pangolin was black-holing port 389 — LDAP connections never reached Authentik. The LDAP plugin reported a credential error rather than a connection error, which obscured the real cause.

## Resolution

Hardcoded Authentik's internal IP address directly in Jellyfin's LDAP plugin configuration, bypassing Pangolin entirely. Both services are on the same internal network, so this is a valid path.

Tip (inference): This is a workaround rather than a clean fix. If Authentik's internal IP ever changes, Jellyfin LDAP will silently break again. A more durable fix would be to add an explicit LDAP proxy rule in Pangolin and revert to the hostname.

## What I'd check first next time

When LDAP auth breaks after any reverse proxy change: verify the LDAP port is explicitly proxied before touching auth config. Test reachability from the Jellyfin host directly:

```bash
nc -zv <authentik-host-or-ip> 389
```

A connection failure here points straight at the proxy layer, not credentials.

## References

_None._
