output "instance_ip_2" {
  description = "IP of the AWS instance"
  value       = aws_instance.my_seconds_vm.public_ip
}

output "instance_type_2" {
  description = "The type of the AWS instance"
  value       = aws_instance.my_seconds_vm.instance_type
}

output "instance_id_2" {
  description = "The description of the AWS instance"
  value       = aws_instance.my_seconds_vm.id
}