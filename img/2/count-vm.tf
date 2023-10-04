resource "yandex_compute_instance" "web" {
  count = 2
  name = "web-${count.index + 1}"
  resources {
        cores           = 2
        memory          = 1
        core_fraction = 5
  }

  boot_disk {
        initialize_params {
        image_id = "fd8tkfhqgbht3sigr37c"
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