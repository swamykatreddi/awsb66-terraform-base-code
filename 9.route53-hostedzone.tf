data "aws_route53_zone" "awsb66_route53_zone" {
  name = "gajapathiraokatreddi.xyz"
}

resource "aws_route53_record" "webservers" {
  count   = var.environment == "dev" ? 3 : 6
  zone_id = data.aws_route53_zone.awsb66_route53_zone.zone_id
  name    = "demo${count.index}.${data.aws_route53_zone.awsb66_route53_zone.name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.appservers[count.index].public_ip]
}