# Região da AWS onde os recursos serão criados
variable "aws_region" {
  default = "sa-east-1"
}

# ID da imagem do Linux Server 20.04
variable "ami_id" {
  default = "ami-0ba39aef11896824a"
}

# Tipo da instância (gratuita no plano Free Tier)
variable "instance_type" {
  default = "t3.micro"
}

# Nome da chave SSH que você criou na AWS
variable "key_name" {
  default = "Chave-Projeto-AWS"
}
