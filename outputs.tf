output "wordpress_public_ips" {
  description = "The public IP addresses of the WordPress instances"
  value       = { for instance in aws_instance.amir_wordpress_instance : instance.id => instance.public_ip }
}
