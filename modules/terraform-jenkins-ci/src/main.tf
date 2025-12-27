module "region" {
  source = "../region"
  aws_region = var.aws_region
}

provider "aws" {
  region = module.region.region
}

module "networking" {
  source = "../networking"
  # pass required variables here
  vpc_cidr           = var.vpc_cidr
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  availability_zones = var.availability_zones
}

module "compute" {
  source = "../compute"
  vpc_id            = module.networking.vpc_id
  public_subnet_ids = module.networking.public_subnet_ids
  private_subnet_ids = module.networking.private_subnet_ids
  # other variables...
}