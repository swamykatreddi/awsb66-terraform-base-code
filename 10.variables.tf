variable "vpc_name" {
  description = "name of the vpc"
  type        = string
}
variable "vpc_cidr" {
  description = "cidr block of the vpc"
  type        = string
}

variable "subnet_cidr_1" {
  description = "CIDR block for the first subnet"
  type        = string
}

variable "subnet_az_1" {
  description = "Availability Zone for the first subnet"
  type        = string
}

variable "subnet_cidr_2" {
  description = "CIDR block for the second subnet"
  type        = string
}

variable "subnet_az_2" {
  description = "Availability Zone for the second subnet"
  type        = string
}

variable "subnet_cidr_3" {
  description = "CIDR block for the third subnet"
  type        = string
}

variable "subnet_az_3" {
  description = "Availability Zone for the third subnet"
  type        = string
}

variable "imagename" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instancetype" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "keyname" {
  description = "Key pair name for the EC2 instance"
  type        = string
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

