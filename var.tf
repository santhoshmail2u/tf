
variable "rg-2-name" {
  type = string
}

variable "rg-1-name" {
  type    = string
  default = "appRg"
}

variable "sa_containers" {
  type    = list(string)
  default = ["tfcontainer", "appcontainer", "backendcontainer", "frontend"]
}

variable "app_sa" {
  type = map(string)
  default = {
    "name"    = "sarmatfstatestorage"
    "rg_name" = "preferredlocation"
    "lcn"     = "East US"
    "a_t"     = "Standard"
    "a_r_t"   = "GRS"
  }
}

variable "multiple_sa" {
  type = map(any)
  default = {
    "sa-1" = {
      "name"    = "santhoshsamulti1"
      "rg_name" = "preferredlocation"
      "lcn"     = "East US"
      "a_t"     = "Standard"
      "a_r_t"   = "GRS"
    }
    "sa-2" = {
      "name"    = "santhoshsamulti2"
      "rg_name" = "preferredlocation"
      "lcn"     = "East US"
      "a_t"     = "Standard"
      "a_r_t"   = "GRS"
    }
  }
}

