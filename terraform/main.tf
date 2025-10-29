provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "restaurant_sg" {
  name        = "restaurant_sg"
  description = "Allow SSH, HTTP, HTTPS"

  dynamic "ingress" {
    for_each = var.allowed_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = var.allowed_cidr
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "restaurant_server" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.restaurant_sg.id]

  tags = {
    Name = var.instance_name
  }
}
