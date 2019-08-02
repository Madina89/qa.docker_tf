resource "aws_route53_record" "qa.docker" {
  zone_id = "${var.zone_id}"
  name    = "docker.${var.domain}"   
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.docker.public_ip}"]
  
}
