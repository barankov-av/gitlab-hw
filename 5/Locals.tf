locals {
  vm_web_name = "netology-${var.env}-${var.project}-${var.role["web"]}"
  vm_db_name = "netology-${var.env}-${var.project}-${var.role["db"]}"
}