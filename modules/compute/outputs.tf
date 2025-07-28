output "instance_ip_2" {
  description = "IP of the AWS instance"
  value       = aws_instance.app_server_2.public_ip
}

output "instance_type_2" {
  description = "The type of the AWS instance"
  value       = aws_instance.app_server_2.instance_type
}

output "instance_id_2" {
  description = "The description of the AWS instance"
  value       = aws_instance.app_server_2.id
}