vpc_name             = "demo-vpc"
vpc_cidr             = "10.66.0.0/16"
region               = "us-east-1"
azs                  = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnet_cidrs  = ["10.66.1.0/24", "10.66.2.0/24", "10.66.3.0/24", "10.66.4.0/24"]
private_subnet_cidrs = ["10.66.40.0/24", "10.66.50.0/24", "10.66.60.0/24", "10.66.30.0/24"]
imagename = {
  us-east-1 = "ami-085ad6ae776d8f09c",
us-wast-1 = "ami-085ad6ae776d8f09c" }
instancetype  = "t2.micro"
keyname       = "delete_later_kp"
inbound_ports = [22, 80, 443]
outbound_ports = [
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  { from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  },
  { from_port   = "-1"
    to_port     = "-1"
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
environmnet = "dev"
