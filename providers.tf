provider "postgresql" {
  host     = var.postgres_host
  username = var.postgres_username
  sslmode  = "disable"
}

provider "docker" {}
