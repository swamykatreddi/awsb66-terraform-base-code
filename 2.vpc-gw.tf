
resource "aws_vpc" "awsb66-vpc-1" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "awsb66-vpc1-ig" {
  vpc_id = aws_vpc.awsb66-vpc-1.id

  tags = {
    Name = "${var.vpc_name}-ig"
  }
}
