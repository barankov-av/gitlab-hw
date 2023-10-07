resource "yandex_compute_instance" "web" {
  count = var.instance_config["count"]
  name = "web-${count.index + 1}"
  resources {
        cores           = var.instance_config["cores"]
        memory          = var.instance_config["memory"]
        core_fraction   = var.instance_config["core_fraction"]
  }

  boot_disk {
        initialize_params {
        image_id = var.image_id_count
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
