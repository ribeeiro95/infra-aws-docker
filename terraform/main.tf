# Define o provedor AWS e a região
provider "aws" {
  region = var.aws_region
}

# Cria uma instância EC2 com Docker instalado automaticamente
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  # Script que será executado ao iniciar a máquina
  user_data = file("ec2_setup.sh")
  vpc_security_group_ids = [aws_security_group.ssh_access.id]


  tags = {
    Name = "ServidorProjetoAWS"
  }
}
