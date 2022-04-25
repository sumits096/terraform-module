variable "gcp_region" {
  type        = string
  description = "gcp region value"
  default     = "us-central-1c"
}

variable "instance_name" {
  type        = string
  description = "VM instance name"
  default     = "ix-vm-machine"
}

variable "machine_type" {
  type        = string
  description = "vm machine type"
  default     = "f1-micro"
}

variable "compute_network" {
  type        = string
  description = "compute network"
  default     = "iv-vm-network"
}

