output "vpc_network" {
  value = yandex_vpc_network.network.id
}

output "vpc_subnet" {
  value = yandex_vpc_subnet.subnet.id
}