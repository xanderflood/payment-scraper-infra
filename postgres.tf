resource "random_password" "postgres_password" {
  length = 12
}

resource "postgresql_role" "payments" {
  name     = "payments"
  login    = true
  password = random_password.postgres_password.result
}

resource "postgresql_database" "payments" {
  name  = "payments"
  owner = postgresql_role.payments.name
}
resource "postgresql_extension" "pgcrypto" {
  name     = "pgcrypto"
  database = postgresql_database.payments.name
}

locals {
  pg_connection_uri = "postgres://payments@${var.postgres_host}/payments?ssl_mode=disabled"
}
