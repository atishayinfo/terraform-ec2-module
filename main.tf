provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source              = "git::https://github.com/atishayinfo/terraform-ec2-module.git"

  # Required arguments for the ec2_instance module
  ami_id              = var.ami_id
  key_name            = var.key_name
  security_group_id   = var.security_group_id

  # Optional arguments for the ec2_instance module
  instance_type       = var.instance_type
  instance_name       = var.instance_name
  volume_size         = var.volume_size
  volume_type         = var.volume_type
  additional_tags     = var.additional_tags
  region              = var.region
}
