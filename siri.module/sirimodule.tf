module "dev" {
  source   = "./siri_module"
  rg_name  = "dev_team"
  sa1_name = "siridev1"
  sa2_name = "siridev2"
}


module "test" {
  source   = "./siri_module"
  rg_name  = "test_team"
  sa1_name = "siridev1"
  sa2_name = "siridev2"
}
