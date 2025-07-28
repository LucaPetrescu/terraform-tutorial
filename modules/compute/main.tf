resource "aws_instance" "app_server_2" {
  ami           = var.ami_id
  instance_type = var.instance_type_2

  tags = {
    Name = "terraform-tutorial-instance-2"
  }
}