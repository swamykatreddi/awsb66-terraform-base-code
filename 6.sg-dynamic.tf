resource "aws_security_group" "awsb66-sg-dynamic" {
  name        = "${var.vpc_name}-sg-dynamic"
  description = "${var.vpc_name}-sg-dynamic"
  vpc_id      = aws_vpc.awsb66-vpc-1.id

  tags = {
    Name = "${var.vpc_name}-sg-dynamic"
  }
  dynamic "ingress" {
    for_each = var.inbound_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  dynamic "egress" {
    for_each = var.outbound_ports
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
}