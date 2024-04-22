resource "aws_instance" "ejemplo-tf-3" {
  ami           = "ami-0395649fbe870727e"
  instance_type = "t2.micro"
  subnet_id = data.aws_subnet.subnet_1.id
  //name = "mi-server"
  tags = {
    Name = "mi-servidor-tf-3"
  }
}