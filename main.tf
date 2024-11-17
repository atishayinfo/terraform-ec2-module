provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}
