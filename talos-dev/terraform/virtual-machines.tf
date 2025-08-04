resource "proxmox_virtual_environment_vm" "talos_cp_01" {
  name        = "talos-cp-01"
  description = "Managed by Terraform"
  tags        = ["terraform,talos,dev"]
  node_name   = "pve4"
  on_boot     = true
  pool_id     = "talos-dev"

  cpu {
    cores = 2
    type = "host"
  }

  memory {
    dedicated = 4096
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = "vmbr0"
    vlan_id = 99

  }

  cdrom {
    enabled = true
    file_id = proxmox_virtual_environment_download_file.talos_nocloud_image.id
  }
  disk {
    datastore_id = "${var.storage_name}"
    interface    = "virtio0"
    size         = 20
  }

  operating_system {
    type = "l26" # Linux Kernel 2.6 - 5.X.
  }

  initialization {
    datastore_id = "${var.storage_name}"
    dns {
        servers = ["172.18.0.1"]
    }
    ip_config {
      ipv4 {
        address = "${var.talos_cp_01_ip_addr}/24"
        gateway = var.default_gateway
      }
      ipv6 {
        address = "dhcp"
      }
    }
  }
}
resource "proxmox_virtual_environment_vm" "talos_cp_02" {
  name        = "talos-cp-02"
  description = "Managed by Terraform"
  tags        = ["terraform,talos,dev"]
  node_name   = "pve5"
  on_boot     = true
  pool_id     = "talos-dev"

  cpu {
    cores = 2
    type = "host"
  }

  memory {
    dedicated = 4096
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = "vmbr0"
    vlan_id = 99

  }

  cdrom {
    enabled = true
    file_id = proxmox_virtual_environment_download_file.talos_nocloud_image5.id
  }
  disk {
    datastore_id = "${var.storage_name}"
    interface    = "virtio0"
    size         = 20
  }

  operating_system {
    type = "l26" # Linux Kernel 2.6 - 5.X.
  }

  initialization {
    datastore_id = "${var.storage_name}"
    dns {
        servers = ["172.18.0.1"]
    }
    ip_config {
      ipv4 {
        address = "${var.talos_cp_02_ip_addr}/24"
        gateway = var.default_gateway
      }
      ipv6 {
        address = "dhcp"
      }
    }
  }
}
resource "proxmox_virtual_environment_vm" "talos_cp_03" {
  name        = "talos-cp-03"
  description = "Managed by Terraform"
  tags        = ["terraform,talos,dev"]
  node_name   = "pve6"
  on_boot     = true
  pool_id     = "talos-dev"

  cpu {
    cores = 2
    type = "host"
  }

  memory {
    dedicated = 4096
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = "vmbr0"
    vlan_id = 99

  }

  cdrom {
    enabled = true
    file_id = proxmox_virtual_environment_download_file.talos_nocloud_image6.id
  }
  disk {
    datastore_id = "${var.storage_name}"
    interface    = "virtio0"
    size         = 20
  }

  operating_system {
    type = "l26" # Linux Kernel 2.6 - 5.X.
  }

  initialization {
    datastore_id = "${var.storage_name}"
    dns {
        servers = ["172.18.0.1"]
    }
    ip_config {
      ipv4 {
        address = "${var.talos_cp_03_ip_addr}/24"
        gateway = var.default_gateway
      }
      ipv6 {
        address = "dhcp"
      }
    }
  }
}
resource "proxmox_virtual_environment_vm" "talos_worker_01" {
  depends_on = [ proxmox_virtual_environment_vm.talos_cp_01 ]
  name        = "talos-worker-01"
  description = "Managed by Terraform"
  tags        = ["terraform,talos,dev"]
  node_name   = "pve4"
  on_boot     = true
  pool_id     = "talos-dev"

  cpu {
    cores = 4
    type = "host"
  }

  memory {
    dedicated = 4096
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = "vmbr0"
    vlan_id = 99
  }

  cdrom {
    enabled = true
    file_id = proxmox_virtual_environment_download_file.talos_nocloud_image.id
  }
  disk {
    datastore_id = "${var.storage_name}"
    interface    = "virtio0"
    size         = 250
  }

  operating_system {
    type = "l26" # Linux Kernel 2.6 - 5.X.
  }

  initialization {
    datastore_id = "${var.storage_name}"
    dns {
        servers = ["172.18.0.1"]
    }
    ip_config {
      ipv4 {
        address = "${var.talos_worker_01_ip_addr}/24"
        gateway = var.default_gateway
      }
      ipv6 {
        address = "dhcp"
      }
    }
  }
}
resource "proxmox_virtual_environment_vm" "talos_worker_02" {
  depends_on = [ proxmox_virtual_environment_vm.talos_cp_01 ]
  name        = "talos-worker-02"
  description = "Managed by Terraform"
  tags        = ["terraform,talos,dev"]
  node_name   = "pve5"
  on_boot     = true
  pool_id     = "talos-dev"

  cpu {
    cores = 4
    type = "host"
  }

  memory {
    dedicated = 4096
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = "vmbr0"
    vlan_id = 99
  }

  cdrom {
    enabled = true
    file_id = proxmox_virtual_environment_download_file.talos_nocloud_image.id
  }
  disk {
    datastore_id = "${var.storage_name}"
    interface    = "virtio0"
    size         = 250
  }

  operating_system {
    type = "l26" # Linux Kernel 2.6 - 5.X.
  }

  initialization {
    datastore_id = "${var.storage_name}"
    dns {
        servers = ["172.18.0.1"]
    }
    ip_config {
      ipv4 {
        address = "${var.talos_worker_02_ip_addr}/24"
        gateway = var.default_gateway
      }
      ipv6 {
        address = "dhcp"
      }
    }
  }
}
resource "proxmox_virtual_environment_vm" "talos_worker_03" {
  depends_on = [ proxmox_virtual_environment_vm.talos_cp_01 ]
  name        = "talos-worker-03"
  description = "Managed by Terraform"
  tags        = ["terraform,talos,dev"]
  node_name   = "pve6"
  on_boot     = true
  pool_id     = "talos-dev"

  cpu {
    cores = 4
    type = "host"
  }

  memory {
    dedicated = 4096
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = "vmbr0"
    vlan_id = 99
  }

  cdrom {
    enabled = true
    file_id = proxmox_virtual_environment_download_file.talos_nocloud_image.id
  }
  disk {
    datastore_id = "${var.storage_name}"
    interface    = "virtio0"
    size         = 250
  }

  operating_system {
    type = "l26" # Linux Kernel 2.6 - 5.X.
  }

  initialization {
    datastore_id = "${var.storage_name}"
    dns {
        servers = ["172.18.0.1"]
    }
    ip_config {
      ipv4 {
        address = "${var.talos_worker_03_ip_addr}/24"
        gateway = var.default_gateway
      }
      ipv6 {
        address = "dhcp"
      }
    }
  }
}