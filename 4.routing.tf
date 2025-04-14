resource "aws_route_table" "demo-rt" {
  vpc_id = aws_vpc.awsb66-vpc-1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.awsb66-vpc1-ig.id
  }

  tags = {
    Name = "${var.vpc_name}-main-rt"
  }
}
resource "aws_route_table_association" "demo-rt-asso-1" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.demo-rt.id
}

resource "aws_route_table_association" "demo-rt-asso-2" {
  subnet_id      = aws_subnet.subnet-2.id
  route_table_id = aws_route_table.demo-rt.id
}
resource "aws_route_table_association" "demo-rt-asso-3" {
  subnet_id      = aws_subnet.subnet-3.id
  route_table_id = aws_route_table.demo-rt.id
}