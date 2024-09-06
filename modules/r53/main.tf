resource "aws_route53_zone" "dummy_zone" {
  name = "dummy.local"
}

resource "aws_route53_record" "alb_record" {
  zone_id = aws_route53_zone.dummy_zone.id
  name    = "nginx.dummy.local"
  type    = "A"
  alias {
    name                   = var.alb_dns_name
    zone_id                = aws_route53_zone.dummy_zone.zone_id
    evaluate_target_health = false
  }
}

output "route53_zone_name" {
  value = aws_route53_zone.dummy_zone.name
}

output "route53_record_name" {
  value = aws_route53_record.alb_record.name
}
