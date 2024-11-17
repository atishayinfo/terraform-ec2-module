# terraform.tfvars
region           = "ca-central-1"
ami_id           = "ami-0bcda2433f3dabc41"
key_name         = "aws-key"
instance_type    = "t2.micro"
instance_name    = "my-ec2-instance"
security_group_id = "sg-088017454f6a86e02"
volume_size      = 8
volume_type      = "gp2"
additional_tags = {
  Environment = "Production"
  Project     = "MyTerraformProject"
}
