resource "aws_instance" "app_server_2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type_2

  tags = {
    Name = "terraform-tutorial-instance-2"
  }
}