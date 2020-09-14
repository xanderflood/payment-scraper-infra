provider "postgresql" {
  host    = var.postgres_host
  userame = var.postgres_username
  sslmode = "disable"
}

provider "docker" {}
