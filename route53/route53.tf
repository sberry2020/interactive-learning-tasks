resource "aws_route53_record" "blog" {
  zone_id = "Z04747962Z1YHTL1QPUBL"
  name    = "blog.awssana.com"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}
