output "instance_ip" {
  description = "IP of the AWS instance"
  value       = module.ec2_compute.instance_ip_2
}

output "instance_type" {
  description = "The type of the AWS instance"
  value       = module.ec2_compute.instance_type_2
}

output "instance_id" {
  description = "The description of the AWS instance"
  value       = module.ec2_compute.instance_id_2
}