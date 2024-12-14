terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc5" 
    }
  }
}

provider "proxmox" {
  pm_api_url      = var.pm_api_url
  pm_user         = var.pm_user
  pm_password     = var.pm_password
  pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "master01" {
  vmid        = 100
  name        = "master01"
  target_node = "pve"
  cores       = var.master_vm_cores
  memory      = var.master_vm_memory
  disks {
    ide {
      ide2 {
        cdrom {
          iso = "local:iso/ubuntu-24.04.1-live-server-amd64.iso"
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size    = "200G"
          storage = "local"
        }            
      }
    }
  }
}

resource "proxmox_vm_qemu" "worker01" {
  vmid        = 101
  name        = "worker01"
  target_node = "pve"
  cores       = var.worker_vm_cores
  memory      = var.worker_vm_memory
  disks {
    ide {
      ide2 {
        cdrom {
          iso = "local:iso/ubuntu-24.04.1-live-server-amd64.iso"
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size    = "350G"
          storage = "local"
        }            
      }
    }
  }
}

resource "proxmox_vm_qemu" "worker02" {
  vmid        = 102
  name        = "worker02"
  target_node = "pve"
  cores       = var.worker_vm_cores
  memory      = var.worker_vm_memory
  disks {
    ide {
      ide2 {
        cdrom {
          iso = "local:iso/ubuntu-24.04.1-live-server-amd64.iso"
        }
      }
    }
    scsi {
      scsi0 {
        disk {
          size    = "350G"
          storage = "local"
        }            
      }
    }
  }
}
