provider "aws" {
  region = "us-west-2"
}


resource "aws_instance" "my_vm" {
  ami           = "ami-0395649fbe870727e"
  instance_type = "t2.micro"

  tags = {
    Name = "ServidorIncial"
  }
}