# Exibe o IP público da instância após a criação
output "instance_ip" {
  value = aws_instance.web.public_ip
}
