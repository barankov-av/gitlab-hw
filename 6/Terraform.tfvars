role = {
  web = "web" 
  db = "db" 
}

vms_resources = {
  web = { 
    cores = 2 
    memory = 1 
    core_fraction = 5 
  }
  db = { 
    cores = 2 
    memory = 2 
    core_fraction = 20 
  }
}

metadata = {
  serial-port-enable = 1
  default     = "var.vms_ssh_root_key"
  description = "ssh-keygen -t ed25519" 
}