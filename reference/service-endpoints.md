# Service Endpoints

Auth legend: **SSO** = Authentik SSO · **Pangolin+SSO** = Pangolin proxy auth backed by Authentik · **Local** = built-in app login · **N/A** = no web UI / internal infrastructure only

<!-- TODO: fill in Public endpoint and Auth columns per service -->

## Media

| Service | Internal endpoint | Public endpoint | Auth | Notes |
|---|---|---|---|---|
| Jellyfin | _TBD_ | _TBD_.thegriffiths.ca | Local | Pinned to pve1 for Intel QuickSync transcoding |
| TubeArchivist | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | YouTube archive |
| Immich | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Photo and video management |

## Home automation

| Service | Internal endpoint | Public endpoint | Auth | Notes |
|---|---|---|---|---|
| Home Assistant | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | |
| Zigbee2MQTT | _TBD_ | Internal only | N/A | Zigbee bridge — no external exposure |
| Grocy | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Household and grocery management |
| Mealie | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Recipe manager |
| Freezerstock | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Freezer inventory |

## Personal management

| Service | Internal endpoint | Public endpoint | Auth | Notes |
|---|---|---|---|---|
| Vaultwarden | _TBD_ | _TBD_.thegriffiths.ca | Local | Bitwarden-compatible; intentionally not behind SSO |
| Actual Budget | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Personal finance |
| Monica | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Personal CRM |
| Paperless | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Document management |
| Readeck | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Read-it-later / bookmarks |
| Dawarich | _TBD_ | location.thegriffiths.ca | _TBD_ | Location tracking |
| Christmas Community | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Gift list coordination |
| LubeLogger | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Vehicle maintenance tracking |
| ToolTracker | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Tool inventory |
| TeslaMate | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Tesla data logger |
| BookLore | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Book library manager |
| CWA | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Calibre Web Automated — ebook management |

## Knowledge and dashboards

| Service | Internal endpoint | Public endpoint | Auth | Notes |
|---|---|---|---|---|
| BookStack | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Wiki / internal documentation |
| Homarr | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Service dashboard |
| Homer | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Alternate dashboard |

## Gaming

| Service | Internal endpoint | Public endpoint | Auth | Notes |
|---|---|---|---|---|
| Minecraft (Ryan) | _TBD_ | _TBD_ | N/A | Game server — not HTTP |

## Infrastructure

| Service | Internal endpoint | Public endpoint | Auth | Notes |
|---|---|---|---|---|
| Authentik | _TBD_ | _TBD_.thegriffiths.ca | Local | SSO identity provider |
| Pangolin | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Reverse proxy; port-forwarded from UCG-Fiber |
| AdGuard Home | _TBD_ | Internal only | _TBD_ | Internal DNS resolver — LXC, portable across cluster |
| Uptime Kuma | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Uptime monitoring |
| Uptime Kuma (cloud01) | _TBD_ | _TBD_.thegriffiths.ca | _TBD_ | Uptime monitoring — cloud instance |
| Cloudflare DDNS | N/A | N/A | N/A | Background service; no web UI |
| Bezsel | _TBD_ | _TBD_ | _TBD_ | Purpose unknown — [AI inference] |
| Termix | _TBD_ | _TBD_ | _TBD_ | Purpose unknown — [AI inference] |
