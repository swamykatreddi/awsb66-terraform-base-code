resource "aws_security_group" "awsb66_allow_all_traffic" {
  name        = "${var.vpc_name}-allow-all-traffic"
  description = "${var.vpc_name}-allow-all-traffic"
  vpc_id      = aws_vpc.awsb66-vpc-1.id

  tags = {
    Name = "${var.vpc_name}-allow-all-traffic"
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}