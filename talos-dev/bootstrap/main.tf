provider "proxmox" {
  endpoint = "https://172.20.0.204:8006/"
  insecure = true # Only needed if your Proxmox server is using a self-signed certificate
}