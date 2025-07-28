provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = "terraform-tutorial-instance"
  }
}

module "ec2_compute" {
  source = "./modules/compute"

  instance_type_2 = "t2.micro"
  ami_id          = data.aws_ami.ubuntu.id
}