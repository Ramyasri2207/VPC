output "load_balancer_dns" {
  value = aws_lb.web_lb.dns_name
}

output "web_instance_ips" {
  value = aws_instance.web_instance[*].public_ip
}

output "rds_endpoint" {
  value = aws_db_instance.rds_db.endpoint
}
