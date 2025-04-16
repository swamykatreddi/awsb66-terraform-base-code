resource "aws_route_table" "demo-main-rt" {
  vpc_id = aws_vpc.awsb66-vpc-1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.awsb66-vpc1-ig.id
  }

  tags = {
    Name = "${var.vpc_name}-main-rt"
  }
}

resource "aws_route_table" "demo-private-rt" {
  vpc_id = aws_vpc.awsb66-vpc-1.id
  tags = {
    Name = "${var.vpc_name}-private-rt"
  }
}

resource "aws_route_table_association" "demo-rt-asso-public" {
  count          = length(var.public_subnet_cidrs)
  subnet_id      = element(aws_subnet.public-subnet.*.id, count.index)
  route_table_id = aws_route_table.demo-main-rt.id
}
resource "aws_route_table_association" "demo-rt-asso-private" {
  count          = length(var.private_subnet_cidrs)
  subnet_id      = element(aws_subnet.private-subnet.*.id, count.index)
  route_table_id = aws_route_table.demo-private-rt.id
}
