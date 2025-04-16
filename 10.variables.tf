variable "vpc_name" {
  description = "name of the vpc"
  type        = string
}
variable "vpc_cidr" {
  description = "cidr block of the vpc"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR block for the public subnet"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR block for the private subnet"
  type        = list(string)
}

variable "azs" {
  description = "Availability Zone for the subnet"
  type        = list(string)
}

variable "inbound_ports" {
  description = "List of ingress ports for security group rules"
  type        = list(number)
}

variable "outbound_ports" {
  description = "List of egress ports for security group rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    })
  )
}
variable "imagename" {
  description = "AMI ID for the instance"

}

variable "instancetype" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "keyname" {
  description = "Key pair name for the EC2 instance"
  type        = string
}

variable "environment" {
  description = "Environment for the deployment (e.g., dev, staging, prod)"
  type        = string
}

variable "region" {
  description = "AWS region for the deployment"
  type        = string
}