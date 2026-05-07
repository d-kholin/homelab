# Domains and DNS

## Domains owned

| Domain | Registrar | Notes |
|---|---|---|
| thegriffiths.ca | Namecheap | Cloudflare does not support .ca TLD registration |

## DNS providers

| Role | Provider |
|---|---|
| Authoritative (public) | Cloudflare — nameservers for thegriffiths.ca |
| Internal resolver | AdGuard Home — dedicated LXC container, portable across cluster nodes |

**Split-horizon behavior:** Most service records are published publicly in Cloudflare pointing to the public IP. AdGuard Home holds local overrides for services that should resolve directly to a private IP. Clients on all VLANs use AdGuard Home as their upstream resolver; AdGuard forwards to Cloudflare for names without a local override.

## Subdomain plan

All services use a flat namespace: `<service>.thegriffiths.ca`. No sub-zones are used to distinguish internal from external services — the split is handled at the resolver level, not the naming level.

## Certificate strategy

TLS certificates are issued and renewed by Pangolin (the reverse proxy) using ACME with the Cloudflare DNS-01 challenge. Cloudflare API credentials are used to fulfil DNS-01 so that certificates can be issued for services not directly reachable from the public internet.
