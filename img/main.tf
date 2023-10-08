module "vpc_dev" {
  source = "./vpc_dev"
  zone = var.default_zone
  cidr_block = ["10.0.1.0/24"]
  env_name = "develop"
}

module "test-vm" {
  source          = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name        = "develop"
  network_id      = module.vpc_dev.vpc_network
  subnet_zones    = [var.default_zone]
  subnet_ids      = [ module.vpc_dev.vpc_subnet ]
  instance_name   = "web"
  instance_count  = 2
  image_family    = "ubuntu-2004-lts"
  public_ip       = true
  
  metadata = {
      user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
      serial-port-enable = 1
  }

}

#Пример передачи cloud-config в ВМ для демонстрации №3
data "template_file" "cloudinit" {
 template = file("./cloud-init.yml")
 vars = {
	public_key = file("~/.ssh/id_ed25519.pub")
  }
}