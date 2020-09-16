provider "postgresql" {
  host     = var.postgres_host
  username = var.postgres_root_username
  password = var.postgres_root_password
  sslmode  = "disable"
}

provider "docker" {}
