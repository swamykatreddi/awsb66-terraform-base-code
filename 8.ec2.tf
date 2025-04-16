resource "aws_instance" "appservers" {
  count         = var.environment == "dev" ? 3 : 6
  ami           = lookup(var.imagename, var.region)
  instance_type = var.instancetype
  key_name      = var.keyname
  subnet_id     = element(aws_subnet.public-subnet.*.id, count.index)
  vpc_security_group_ids = ["${aws_security_group.awsb66_allow_all_traffic.id}",
  "${aws_security_group.awsb66-sg-dynamic.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "${var.vpc_name}-appserver-${count.index + 1}"
    Env  = var.environment
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
  lifecycle {
    prevent_destroy       = false
    create_before_destroy = true
    ignore_changes        = [tags]
  }
}