resource "yandex_compute_instance" "k_instance" {

depends_on = [ yandex_compute_instance.web ]

  count = length(var.vms_k)
  name = "${var.vms_k[count.index].vm_name}"
  platform_id = "standard-v1"
  resources {
        cores           = var.vms_k[count.index].cpu
        memory          = var.vms_k[count.index].ram
        core_fraction   = var.vms_k[count.index].frac
  }

  boot_disk {
        initialize_params {
        image_id = var.image_id_for
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
