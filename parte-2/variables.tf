# Arquivo variables.tf

variable "db_name" {
    description = "Nome do banco de dados"
    type = string
}

variable "db_username" {
    description = "Nome de usuário do banco de dados"
    type = string
}

variable "db_password" {
    description = "Senha do banco de dados"
    type = string
}