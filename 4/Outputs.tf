output "instances_ips" {
  value = {
    vm_web_name = yandex_compute_instance.platform-web.network_interface.0.nat_ip_address 
    vm_db_name  = yandex_compute_instance.platform-db.network_interface.0.nat_ip_address 
  }
  description = "Имена и внешние IP-адреса ВМ"
}