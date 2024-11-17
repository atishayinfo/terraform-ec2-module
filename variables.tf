variable "region" {
  description = "The AWS region to launch the instance"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key name for SSH access"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "my-ec2-instance"
}

variable "security_group_id" {
  description = "Security group ID to assign to the instance"
  type        = string
}

variable "volume_size" {
  description = "Size of the root volume (in GB)"
  type        = number
  default     = 8
}

variable "volume_type" {
  description = "Volume type (e.g., gp2, io1)"
  type        = string
  default     = "gp2"
}

variable "additional_tags" {
  description = "Additional tags to add to the EC2 instance"
  type        = map(string)
  default     = {}
}
