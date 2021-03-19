provider "aws" {
  region = "us-east-2"
  access_key = "your_access_key"
  secret_key = "your_secret_key"
}

resource "aws_instance" "centos" {
  ami                    = "ami-03d64741867e7bb94"
  instance_type          = "t2.micro"
  key_name               = "kafka-ohio"
  monitoring             = true

  associate_public_ip_address = true
  tags = {
    Name = "centos_instance"
  }
}
