resource "docker_container" "payments" {
  name    = "payments"
  image   = "xanderflood/payment-scraper:build-4"
  command = ["proton"]
  env     = local.env_strings

  networks_advanced {
    name = var.postgres_network_name
  }

  restart = "always"

  # needed for the chromium-backed ProtonMail API
  capabilities {
    add = ["SYS_ADMIN"]
  }
}

# resource "docker_service" "telegram_bot" {
#   name = "protonmail_scraper"

#   task_spec {
#     container_spec {
#       image = "xanderflood/payment-scraper:telegram-v0.0.1"

#       env = local.env_strings
#     }

#     networks = [var.postgres_network_name]
#   }
# }
