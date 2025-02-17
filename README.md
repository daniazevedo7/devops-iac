# DevOps - IAC

![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Ansible](https://img.shields.io/badge/Ansible-EE0000?style=for-the-badge&logo=ansible&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white)

## Descrição

Este projeto demonstra como subir uma instância no EC2 da AWS utilizando **Terraform** para a infraestrutura como código (IaC) e **Ansible** para configuração e provisionamento. Após a criação da instância, foi implementado um projeto de teste que sobe um servidor web usando o framework **Django**.

## Tecnologias Utilizadas

- **Terraform**: Para criar e gerenciar a infraestrutura na AWS de forma automatizada.
- **Ansible**: Para configurar a instância EC2 e instalar o servidor web com Django.
- **AWS**: Como provedor de nuvem para hospedar a instância EC2.

## Como Executar o Projeto

### Pré-requisitos

- Terraform instalado ([Instalação do Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli))
- Ansible instalado ([Instalação do Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html))
- Conta na AWS com credenciais configuradas.

### Passos para Execução

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/daniazevedo7/devops-iac.git
   cd devops-iac
2. **Inicialize o Terraform:**
    ```bash
    terraform init
3. **Aplique a infraestrutura com o Terraform:** 
    ```bash
    terraform apply
4. **Configure a instância com o Ansible:** 
    ```bash
    ansible-playbook playbook.yml -u ubuntu --private-key chave.pem -i hosts.yml
5. **Acesse a pasta criada na instância e execute so comandos abaixo:**
    ```bash
    #Ativar a venv
    . venv/bin/activate
    #Subir o seridor web
    python manage.py runserver 0.0.0.0:8000
