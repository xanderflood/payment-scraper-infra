locals {
  env = {
    PROTONMAIL_USERNAME   = var.protonmail_username
    PROTONMAIL_PASSWORD   = var.protonmail_password
    PROTONMAIl_LABEL_NAME = var.protonmail_label_name

    TELEGRAM_BOT_API_TOKEN   = var.telegram_bot_api_token
    TELEGRAM_BOT_API_CHAT_ID = var.telegram_bot_api_chat_id

    POSTGRES_CONNECTION_STRING = local.pg_connection_uri
    PGPASSWORD                 = random_password.postgres_password.result

    # TODO remove
    DEVELOPMENT = "yes"
  }

  env_strings = [for k, v in local.env : "${k}=${v}"]
}
