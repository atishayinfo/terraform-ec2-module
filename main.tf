# main.tf
provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = var.instance_name
  }

  # Optional: Security group for the instance
  vpc_security_group_ids = [var.security_group_id]

  # Optional: EBS volume (for custom storage)
  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }
}

