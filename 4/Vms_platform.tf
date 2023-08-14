variable "vm_db_family" {
  type        = string 
  description = "Ubuntu family"
  default     = "ubuntu-2004-lts" 
}

variable "vm_db_name" {
  type        = string 
  description = "Имя ВМ"
  default     = "netology-develop-platform-db" 
}

variable "vm_db_platform_id" {
  type        = string 
  description = "Идентификатор платформы для ВМ"
  default     = "standard-v1" 
}

variable "vm_db_cores" {
  type        = number 
  description = "Количество ядер для ВМ"
  default     = 2 
}

variable "vm_db_memory" {
  type        = number 
  description = "Объем памяти для ВМ в ГБ"
  default     = 2 
}

variable "vm_db_core_fraction" {
  type        = number 
  description = "Доля ядра для ВМ в процентах"
  default     = 20 
}

variable "vm_db_preemptible" {
  type        = bool 
  description = "Признак прерывания ВМ при нехватке ресурсов"
  default     = true 
}
