resource "aws_security_group" "ssh_access" {
  name        = "ssh-access"
  description = "Permite acesso SSH pela porta 22"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Para testes. Depois, substitua por seu IP exato para mais segurança.
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SSHAccess"
  }
}

data "aws_vpc" "default" {
  default = true
}
