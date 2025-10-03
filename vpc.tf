
module "lms-vpc-dev" {
  source  = "./modules/vpc_module"
  vpccidr = "10.0.0.0/22"
  vpcname = "lms-project-vpc-dev"
  env     = "dev"
}
module "lms-vpc-qa" {
  source  = "./modules/vpc_module"
  vpccidr = "10.0.4.0/22"
  vpcname = "lms-project-vpc-qa"
  env     = "qa"
}

module "lms-dev-pvt-sn1" {
  source     = "./modules/subnet_module"
  sncidr     = "10.0.0.0/24"
  snname     = "lms-dev-pvt-sn1"
  vpcid      = module.lms-vpc-dev.vpcid
  env        = "dev"
  mapublicip = false
}
