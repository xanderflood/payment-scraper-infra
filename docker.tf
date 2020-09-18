locals {
  image = "xanderflood/payment-scraper:build-9"
}

resource "docker_container" "payments" {
  name    = "payments-proton"
  image   = local.image
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

resource "docker_service" "telegram_bot" {
  name = "payments-telegram"

  task_spec {
    container_spec {
      image   = local.image
      command = ["telegram"]
      env     = local.env
    }

    networks = [var.postgres_network_name]
  }
}
