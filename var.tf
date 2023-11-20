
variable "rg-2-name" {
  type = string
}

variable "rg-1-name" {
  type = string
  default = "appRg"
}

variable "sa_containers" {
  type = list(string)
  default = ["tfcontainer","appcontainer","backendcontainer","frontend"]
}

variable "app_sa" {
  type = map(string)
  default = {
    "name" = "sarmatfstatestorage"
    "rg_name" = "preferredlocation"
    "lcn" = "East US"
    "a_t" = "Standard"
    "a_r_t" = "GRS"
  }
}

# length(var.sa_containers) = 3
# count = 4
# count.index = [0,1,2,3]
