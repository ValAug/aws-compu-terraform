#---main/module---

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  tags = {
    Name = "linux-ami"
  }
}

data "aws_ami" "latest_ubuntu" {
most_recent = true
owners = ["099720109477"]

  filter {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
      name   = "virtualization-type"
      values = ["hvm"]
  }

  tags = {
    Name = "ubuntu-ami"
  }
}

resource "aws_instance" "linux_vm" {
  count = var.instances_count
  ami = data.aws_ami.amazon_linux.id
  instance_type = var.instances_type

  tags = {
    Name = "linux-ec2"
  }
}

resource "aws_instance" "ubuntu_vm" {
  count = var.instances_count  
  ami = data.aws_ami.latest_ubuntu.id
  instance_type = var.instances_type

  tags = {
    Name = "my-ubuntu-ec2"
  }
}
