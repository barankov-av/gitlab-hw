resource "yandex_compute_disk" "disks" {
  count   = var.vms_disks["count"]
  name  = "disk-${count.index + 1}"
  size  = var.vms_disks["size"]
}

resource "yandex_compute_instance" "storage" {
  name = "storage"
  resources {
        cores = var.vms_resources["cores"]
        memory = var.vms_resources["memory"]
        core_fraction = var.vms_resources["core_fraction"]
  }

  boot_disk {
        initialize_params {
        image_id = var.image_id
        }
  }

  dynamic "secondary_disk" {
   for_each = "${yandex_compute_disk.disks.*.id}"
   content {
        disk_id = yandex_compute_disk.disks["${secondary_disk.key}"].id
   }
  }
  network_interface {
        subnet_id = yandex_vpc_subnet.develop.id
        nat     = true
  }

  metadata = {
        ssh-keys = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
  }
}