provider "postgresql" {
  host     = var.postgres_host
  username = var.postgres_root_username
  sslmode  = "disable"
}

provider "docker" {}
