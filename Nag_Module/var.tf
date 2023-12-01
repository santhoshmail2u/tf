variable "resgrp_name" {
  type = string
}
variable "sa1_name" {
  type = string
}
variable "sa2_name" {
  type = string
}
variable "account_tier" {
  type    = string
  default = "standard"
}
variable "sa_con1" {
  type    = list(string)
  default = ["sales", "product"]
}
variable "sa_con2" {
  type    = list(string)
  default = ["Inbound", "packaging"]
}