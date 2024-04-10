resource "aws_security_group" "mi_grupo_de_seguridad" {
  name = "primer-servidor-sg"
  vpc_id = data.aws_vpc.default.vpc_id
  ingress = {
    cidr_blocks = ["0.0.0.0/0"]
    
  }
}