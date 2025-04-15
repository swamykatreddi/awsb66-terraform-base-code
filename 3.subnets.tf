

resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.awsb66-vpc-1.id
  cidr_block        = var.subnet_cidr_1
  availability_zone = var.subnet_az_1

  tags = {
    Name = "${var.vpc_name}-public-subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id            = aws_vpc.awsb66-vpc-1.id
  cidr_block        = var.subnet_cidr_2
  availability_zone = var.subnet_az_2

  tags = {
    Name = "${var.vpc_name}-public-subnet-2"
  }
}

resource "aws_subnet" "subnet-3" {
  vpc_id            = aws_vpc.awsb66-vpc-1.id
  cidr_block        = var.subnet_cidr_3
  availability_zone = var.subnet_az_3

  tags = {
    Name = "${var.vpc_name}-public-subnet-3"
  }
}