resource "aws_instance" "appservers" {
  ami                         = var.imagename
  instance_type               = var.instancetype
  key_name                    = var.keyname
  subnet_id                   = aws_subnet.subnet-1.id
  vpc_security_group_ids      = ["${aws_security_group.awsb66_allow_all_traffic.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "${var.vpc_name}-appserver-01"
  }
  root_block_device {
    volume_size = 10
    volume_type = "gp2"
  }
  user_data = <<-EOF
    #!/bin/bash
    apt update && apt install nginx -y
    systemctl start nginx
    echo "<h1>Welcome to Terraform</h1>" > /var/www/html/index.nginx-debian.html
    EOF
}