###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "/root/.ssh/id_ed25519.pub"
  description = "ssh-keygen -t ed25519"
}

variable "vm_web_family" {
  type        = string 
  description = "Ubuntu family"
  default     = "ubuntu-2004-lts" 
}

variable "vm_web_name" {
  type        = string 
  description = "Имя ВМ"
  default     = "netology-develop-platform-web" 
}

variable "vm_web_platform_id" {
  type        = string 
  description = "Идентификатор платформы для ВМ"
  default     = "standard-v1" 
}

variable "vm_web_cores" {
  type        = number 
  description = "Количество ядер для ВМ"
  default     = 2 
}

variable "vm_web_memory" {
  type        = number 
  description = "Объем памяти для ВМ в ГБ"
  default     = 1 
}

variable "vm_web_core_fraction" {
  type        = number 
  description = "Доля ядра для ВМ в процентах"
  default     = 5 
}

variable "vm_web_preemptible" {
  type        = bool 
  description = "Признак прерывания ВМ при нехватке ресурсов"
  default     = true 
}