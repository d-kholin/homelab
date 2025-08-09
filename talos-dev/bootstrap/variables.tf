variable "cluster_name" {
  type    = string
  default = "talos-dev"
}

variable "default_gateway" {
  type    = string
  default = "172.18.0.1"
}

variable "talos_cp_01_ip_addr" {
  type    = string
  default = "172.18.0.11"
}

variable "talos_cp_02_ip_addr" {
  type    = string
  default = "172.18.0.12"
}

variable "talos_cp_03_ip_addr" {
  type    = string
  default = "172.18.0.13"
}

variable "talos_worker_01_ip_addr" {
  type    = string
  default = "172.18.0.101"
}
variable "talos_worker_02_ip_addr" {
  type    = string
  default = "172.18.0.102"
}

variable "talos_worker_03_ip_addr" {
  type    = string
  default = "172.18.0.103"
}

variable "storage_name" {
  type    = string
  default = "SSD"
  
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}