# Infraestrutura AWS com Docker e Terraform
Este projeto provisiona uma infraestrutura na AWS usando Terraform e Docker.

# 🚀 Infraestrutura AWS com Docker e Terraform

[![Terraform](https://img.shields.io/badge/Terraform-v1.6+-623CE4?logo=terraform)](https://www.terraform.io/)
[![Docker](https://img.shields.io/badge/Docker-ready-2496ED?logo=docker)](https://www.docker.com/)
[![AWS](https://img.shields.io/badge/AWS-cloud-deployed-FF9900?logo=amazon-aws)](https://aws.amazon.com/)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

Este projeto provisiona uma infraestrutura completa na AWS utilizando **Terraform** e **Docker**, ideal para ambientes de desenvolvimento, testes ou produção em nuvem.

---

## 📦 Tecnologias Utilizadas

- 🧱 [Terraform](https://www.terraform.io/) — Infraestrutura como código  
- 🐳 [Docker](https://www.docker.com/) — Contêineres portáveis  
- ☁️ [AWS](https://aws.amazon.com/) — Provedor de nuvem  
- 🔐 Chaves `.pem` para acesso SSH  

---

## 📁 Estrutura do Projeto

```
infra-aws-docker/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── security_group.tf
│   ├── ec2_setup.sh
│   └── .terraform.lock.hcl
├── .gitignore
├── Projeto-AWS.pem
├── Chave-Projeto-AWS.pem
```

---

## ⚙️ Funcionalidades

- Criação de instâncias EC2 com Docker instalado  
- Configuração de rede (VPC, subnets, security groups)  
- Provisionamento automatizado via Terraform  
- Acesso via chave SSH (`.pem`)  
- Deploy de contêineres Docker remotamente  

---

## 🚀 Como Usar

### 1. Clone o repositório

```bash
git clone https://github.com/ribeeiro95/infra-aws-docker.git
cd infra-aws-docker
```

### 2. Configure suas variáveis

Edite o arquivo `terraform.tfvars` com suas credenciais e configurações:

```hcl
aws_access_key = "SEU_ACCESS_KEY"
aws_secret_key = "SEU_SECRET_KEY"
region         = "us-east-1"
```

### 3. Inicialize e aplique o Terraform

```bash
terraform init
terraform plan
terraform apply
```

---

## 🔐 Segurança

- As chaves `.pem` **não devem ser versionadas**. Certifique-se de que estão no `.gitignore`.  
- Use [AWS Secrets Manager](https://aws.amazon.com/secrets-manager/) para gerenciar credenciais em produção.  

---

## 🧪 Testes e Validações

- ✅ Validação de sintaxe: `terraform validate`  
- 🧼 Formatação automática: `terraform fmt`  
- 🔍 Linter recomendado: [tflint](https://github.com/terraform-linters/tflint)  

---

## ⚙️ GitHub Actions (CI/CD)

Adicione este workflow em `.github/workflows/terraform.yml` para validação automática:

```yaml
name: Terraform CI

on:
  push:
    branches: [ master ]

jobs:
  terraform:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v2
      - name: Terraform Format
        run: terraform fmt -check
      - name: Terraform Init
        run: terraform init
      - name: Terraform Validate
        run: terraform validate
```

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## 👤 Autor

**Gustavo Ribeiro**  
[github.com/ribeeiro95](https://github.com/ribeeiro95)
```