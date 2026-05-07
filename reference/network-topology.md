# Network Topology

## Overview

Three-node Proxmox cluster behind a UniFi Cloud Gateway Fiber. Traffic is segmented into seven VLANs covering trusted clients, servers, IoT, staging, and isolated backup access for external parties. IPv6 is enabled on four VLANs via a delegated /56 prefix.

## Subnets

| VLAN Name | VLAN ID | IPv4 Subnet | IPv6 Subnet | Purpose |
|---|---|---|---|---|
| Default | 1 | 10.69.69.0/24 | — | Primary trusted LAN |
| Servers | 20 | 172.20.0.0/23 | 2001:56a:7928:e300::/64 | Homelab servers and VMs |
| IoT | 50 | 192.168.50.0/24 | — | Smart home and IoT devices |
| ClientAccess | 68 | 192.168.68.0/24 | 2001:56a:7928:e301::/64 | Client devices (laptops, phones, tablets) |
| homelab-dev | 99 | 172.18.0.0/24 | — | Staging and pre-production experimentation |
| FriendBackup-A | 189 | 192.168.189.0/24 | 2001:56a:7928:e302::/64 | Isolated backup access — external party A |
| FriendBackup-B | 190 | 192.168.190.0/24 | 2001:56a:7928:e303::/64 | Isolated backup access — external party B |

DHCP is served by the UCG-Fiber on all VLANs. The Servers VLAN uses /23 to allow room for growth without renumbering.

## VLANs

All VLANs are configured in UniFi Network. The IoT and homelab-dev VLANs have no IPv6 assignment. FriendBackup VLANs are intentionally isolated — no inter-VLAN routing to the rest of the lab.

## Key hosts

| Hostname | Role | Hardware | IP | VLAN |
|---|---|---|---|---|
| Thrawn | Gateway / UCG-Fiber | UniFi Cloud Gateway Fiber | — | — |
| pve1 | Proxmox node | Beelink Mini PC · Intel i5-12450H · 64 GB RAM | 172.20.0.200 | Servers |
| pve2 | Proxmox node | Custom desktop · AMD Ryzen 5 3600 · 80 GB RAM | 172.20.0.201 | Servers |
| pve3 | Proxmox node | Dell R720 · 2× Xeon E5-2640 · 128 GB RAM | 172.20.0.202 | Servers |

**Node-specific constraints:**
- pve1 — Jellyfin is pinned here for Intel QuickSync hardware transcoding (i5-12450H iGPU).
- pve3 — Local backup workloads run here; larger disk capacity in the R720's drive bays.

## Diagram

_None yet._
