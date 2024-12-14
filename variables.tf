variable "pm_api_url" {
  description = "Proxmox API URL"
  type        = string
  default     = "https://192.168.0.170:8006/api2/json"
}

variable "pm_user" {
  description = "Proxmox username"
  type        = string
}

variable "pm_password" {
  description = "Proxmox password"
  type        = string
}

variable "master_vm_memory" {
  description = "Memory for master VM"
  type        = number
  default     = 15360
}

variable "worker_vm_memory" {
  description = "Memory for worker VMs"
  type        = number
  default     = 24567
}

variable "master_vm_cores" {
  description = "Cores for master VM"
  type        = number
  default     = 4
}

variable "worker_vm_cores" {
  description = "Cores for worker VMs"
  type        = number
  default     = 12
}
