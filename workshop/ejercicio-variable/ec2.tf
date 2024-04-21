resource "aws_instance" "vm_instance_imp" {
  ami           = "ami-0395649fbe870727e"
  availability_zone = var.zone
  instance_type = var.variable_imcompleta
  //name = "mi-server"
  tags = {
    Name = "mi-servidor-tf-3"
  }
}