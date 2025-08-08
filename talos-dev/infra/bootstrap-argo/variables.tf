variable "cluster_endpoint" {
  type = string
}
variable "git_repo" {
  type = string
}

variable "git_rev" {
  type    = string
  default = "main"
}