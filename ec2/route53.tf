resource "aws_route53_record" "wordpress" {
  zone_id = "Z04747962Z1YHTL1QPUBL"
  name    = "wordpress.awssana.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip] 
}
