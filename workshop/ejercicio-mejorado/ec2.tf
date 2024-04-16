resource "aws_instance" "mi_servidor" {
  ami                    = "ami-0395649fbe870727e"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.mi_grupo_de_seguridad.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hola Grupo de Terraformers!" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  depends_on = [
    aws_security_group.mi_grupo_de_seguridad
  ]
}